/*  popup.js: part of the renaming tab extension
 *
 *  Written by Micah Cliffe
 */
document.getElementById("form").addEventListener("submit", function() {
  document.getElementById("tfbutton").disabled = true;
  var textelement = document.getElementById("tfname");
  var newname     = textelement.value;
  if (newname.replace(/\s+/g, '') !== "") {
    var titlecmd    = "document.title = '".concat(newname).concat("'");
    chrome.tabs.query({'active': true, 
                       'windowId': chrome.windows.WINDOW_ID_CURRENT},
        function(tab) {
            chrome.tabs.executeScript(tab.id, {code: titlecmd});
        }
    );
    textelement.value = "";
  }
  document.getElementById("tfbutton").disabled = false;
  window.close();
  return;
});
