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

Cu.import("resource://app/jsmodules/sbProperties.jsm");

const SPLASH_IMG = "chrome://covershare-albumart/skin/default.png";

// check that gMM exists
if (typeof gMM == "undefined") {
  gMM = Cc["@songbirdnest.com/Songbird/Mediacore/Manager;1"].getService(Ci.sbIMediacoreManager);
}

// listen to Mediacore events and show artwork
CovershareImages = {
  onLoad: function() {
    this._service = Cc["@project-ile.net/covershare/albumart;1"].getService().wrappedJSObject;
    this._imgbox = document.getElementById("covershare-albumart-imgbox");
    this._imgbox.onload = this.scaleImage;
    gMM.addListener(this);
    
    // do we have a currently playing song?
    if ((gMM.status.state == Ci.sbIMediacoreStatus.STATUS_PLAYING) ||
        (gMM.status.state == Ci.sbIMediacoreStatus.STATUS_PAUSED) ||
        (gMM.status.state == Ci.sbIMediacoreStatus.STATUS_BUFFERING)) {
      artistName = gMM.sequencer.currentItem.getProperty(SBProperties.artistName);
      albumName = gMM.sequencer.currentItem.getProperty(SBProperties.albumName);
      this.displayArt(artistName, albumName);
    }
    else {
      this.displayArt(null, null);
    }
  },
  
  onUnload: function() {
    gMM.removeListener(this);
  },
  
  onMediacoreEvent: function(ev) {
    switch (ev.type) {
      case Ci.sbIMediacoreEvent.TRACK_CHANGE:
        var artistName = ev.data.getProperty(SBProperties.artistName);
        var albumName = ev.data.getProperty(SBProperties.albumName);
        this.displayArt(artistName, albumName);
        break;
      case Ci.sbIMediacoreEvent.STREAM_END:
      case Ci.sbIMediacoreEvent.STREAM_STOP:
        this.displayArt(null, null);
        break;
    }
  },
  
  displayArt: function(artistName, albumName) {
    if (artistName && albumName) {
      var imageUri = this._service.findAlbumArt(artistName, albumName);
      if (imageUri!=false) {
        this._imgbox.src = imageUri;
        return;
      }
    }
    this._imgbox.src = SPLASH_IMG;
  },
  
  scaleImage: function(ev) {
    // don't scale our splash image
    if (ev.target.src == SPLASH_IMG) {
      ev.target.width = ev.target.naturalWidth;
      ev.target.height = ev.target.naturalHeight;
      return;
    }
    // what is the size of our container?
    var maxWidth = document.documentElement.boxObject.width;
    var maxHeight = document.documentElement.boxObject.height;
    var imgRatio = ev.target.naturalWidth / ev.target.naturalHeight;
    
    // should we scale to maxWidth or maxHeight?
    if (maxHeight  > maxWidth) {
      ev.target.width = maxWidth;
      ev.target.height = maxWidth / imgRatio;
    }
    else {
      ev.target.height = maxHeight;
      ev.target.width = maxHeight * imgRatio;
    }
  }
}

window.addEventListener("load", function(ev) { CovershareImages.onLoad(); }, false);
window.addEventListener("unload", function(ev) { CovershareImages.onUnload(); }, false);
