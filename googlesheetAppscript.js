function gettingCells() {
    let sheetApp = SpreadsheetApp.getActiveSpreadsheet();
    let sheet = sheetApp.getSheetByName('Auteurs');
    let range = sheet.getRange('A2:A1163').getValues();
  
    let sheet2 = sheetApp.getSheetByName('auteur_id_for_book');
    let range2 = sheet2.getRange('B1:B2723').getValues();
  
    range2.forEach((cellElt,index) =>{
       /* for(let i = 0; i < range.length; i++){
          if(cellElt == range[i]){
            sheet2.getRange('C' + index).setValue(i);
          }
      }*/
      sheet2.getRange('C' + index + 1).setValue(index);
    });
  
  
  }
  