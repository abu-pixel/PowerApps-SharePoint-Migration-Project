// automation_examples.gs
// Example Apps Script to auto-archive completed tasks from a Tasks sheet to an Archive sheet

function archiveCompletedTasks() {
  var ss = SpreadsheetApp.getActive();
  var sheet = ss.getSheetByName('Tasks');
  var archive = ss.getSheetByName('Archive');
  if (!archive) archive = ss.insertSheet('Archive');

  var data = sheet.getDataRange().getValues();
  var headers = data.shift();
  var remaining = [];
  for (var i = 0; i < data.length; i++) {
    var row = data[i];
    var status = row[headers.indexOf('Status')];
    if (status && status.toString().toLowerCase() === 'completed') {
      archive.appendRow(row);
    } else {
      remaining.push(row);
    }
  }
  // Clear and rewrite remaining rows (preserve headers)
  sheet.clearContents();
  sheet.appendRow(headers);
  for (var j = 0; j < remaining.length; j++) sheet.appendRow(remaining[j]);
}
