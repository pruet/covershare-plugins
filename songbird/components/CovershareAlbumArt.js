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
  if (this._recentArtist == artistName && this._recentAlbum == albumName) { return this._recentImage; }
  var request = Cc["@mozilla.org/xmlextras/xmlhttprequest;1"].createInstance(Ci.nsIXMLHttpRequest);
  var nativeJSON = Cc["@mozilla.org/dom/json;1"].createInstance(Ci.nsIJSON);
  url = covershareSearchUrl(artistName, albumName);
  
  request.open("GET", url, false);
  try {
     request.send(null);
   }
  catch (e) { return null; } // no network connection
  
  // Parse Json only if true
  if (request.status == 200 && request.responseText && request.responseText != "404 Not Found"){
    // Avoid using eval() since security and performance concern.    
    var doc = nativeJSON.decode(request.responseText);
    var imageUri = doc[0].info.artwork;
    if(!imageUri) { 
      return false;
    }else{
      this._recentArtist = artistName;
      this._recentAlbum = albumName;
      this._recentImage = imageUri;
      return this._recentImage;
    }
  }else{
    return false;
  }
  
}

function NSGetModule(compMgr, fileSpec) {
  return XPCOMUtils.generateModule([CovershareAlbumArt]);
}

function covershareSearchUrl(artistName, albumName){
  var covershareApiSearchUrl = "http://www.covershare.com/api/search.php?";
  var artist = "";
  var album = "";
	if(artistName != null) { artist=artistName.replace(/\&/gi, "&amp;").replace(/\s+/gi, "+"); }
	if(albumName != null) { album=albumName.replace(/\&/gi, "&amp;").replace(/\s+/gi,"+"); }
  return covershareApiSearchUrl + "artist=" + artist + "&album=" + album;
}