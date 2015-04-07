library(RSelenium)


RSelenium::startServer()

remDr <- remoteDriver(remoteServerAddr = "localhost" 
                      , port = 4444
                      , browserName = "chrome"
)


remDr$open()

remDr$navigate("http://www8a.senado.gov.br/dwweb/abreDoc.html?docId=4651555")

remDr$switchToFrame("frmDocumento")
remDr$switchToFrame("openDocChildFrame")
remDr$switchToFrame("webiViewFrame")

elementos <- remDr$findElements("css selector", ".mclC")


webElem <- elementos[[5]]

webElem$clickElement()
webElem$clickElement()

ele <- remDr$findElement("css selector", "#theBttnPV1DelButton .imo")
ele$clickElement()

ele <- remDr$findElement("css selector", "#theBttnpromptsOKButton")
ele$clickElement()


ele <- remDr$findElement("css selector", "#IconImg_Txt_iconMenu_icon_docMenu")
ele$clickElement()

remDr$switchToFrame("frmDocumento")
remDr$switchToFrame("openDocChildFrame")
remDr$switchToFrame("webiViewFrame")


?readLines

readLines(remDr$getPageSource())