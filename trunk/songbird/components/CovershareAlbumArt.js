/*  
 *  Copyright (c) 2008 Pruet Boonma <pruetboonma@gmail.com>
 *  
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *  
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *  
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

const Cc = Components.classes;
const Ci = Components.interfaces;
const Cu = Components.utils;

Cu.import("resource://gre/modules/XPCOMUtils.jsm");

function CovershareAlbumArt() {
  this.wrappedJSObject = this;
};

CovershareAlbumArt.prototype = {
  classDescription: "CoverShare.com Album Art Javascript XPCOM Component",
  classID: Components.ID("{F9BD5EFF-0CB2-46c2-B66E-D9C0B7050166}"),
  contractID: "@project-ile.net/covershare/albumart;1",
  QueryInterface: XPCOMUtils.generateQI([Ci.sbIMediacoreEventListener])
}

CovershareAlbumArt.prototype.findAlbumArt = function(artistName, albumName) {
    if (this._recentArtist == artistName && this._recentAlbum == albumName) {
      return this._recentImage;
    }
    
    //var url = "http://www.covershare.com/api/search.php?artist=" + escape(artistName) + "&album=" + escape(albumName);
var url = "http://www.covershare.com/api/search.php?artist=" + artistName.replace("&", "&amp;").replace(" ", "+") + "&album=" + albumName.replace("&", "&amp;").replace(" ","+");
    var request = Cc["@mozilla.org/xmlextras/xmlhttprequest;1"].createInstance(Ci.nsIXMLHttpRequest);
    request.open("GET", url, false);

    request.send(null);
    if (!request.responseText) { return false; }
	if(request.responseText == "404 Not Found") {return false;}
	var doc = eval ('(' + request.responseText + ')');
    var imageUri = doc[0].info.artwork;
    if (imageUri) {
      this._recentArtist = artistName;
      this._recentAlbum = albumName;
      this._recentImage = imageUri;
      return this._recentImage;
    }
    else {
      return false;
    }
}


function NSGetModule(compMgr, fileSpec) {
  return XPCOMUtils.generateModule([CovershareAlbumArt]);
}
