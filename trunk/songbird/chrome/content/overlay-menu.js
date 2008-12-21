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

if(!("Cc" in window))
  window.Cc = Components.classes;
if(!("Ci" in window))
  window.Ci = Components.interfaces;


function onSearchCovershareForArtWork() {
	service = window.Cc["@project-ile.net/covershare/albumart;1"].getService().wrappedJSObject;
	var selectedTracks = window.gBrowser.currentMediaListView.selection;
	if(selectedTracks.count <= 0) {
		alert('Nothing is selected. Please select songs which you want to get artwork.');
	} else {
		var artist;
		var album;
		var item;
		var imageUri;
		var enumerator = selectedTracks.selectedMediaItems;
		var cache = new Array();
		while(enumerator.hasMoreElements()) {
			item = enumerator.getNext();
			artist = item.getProperty(SBProperties.artistName);
			album = item.getProperty(SBProperties.albumName);
			if(cache[artist + "::" + "album"] == undefined) {
				imageUri= service.findAlbumArt(artist, album);
				cache[artist + "::" + "album"] = imageUri;
			} else {
				imageUri = cache[artist + "::" + "album"];
			}
			if(imageUri) {
				item.setProperty(SBProperties.primaryImageURL, imageUri);
			}
		}
	}
}