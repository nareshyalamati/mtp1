SN = gg.searchNumber
  GC = gg.choice
  MC = gg.multiChoice
  GR = gg.getResults
  GRC = gg.getResultCount
  EA = gg.editAll
  SA = gg.searchAddress
  TX = gg.TYPE_XOR
  TB = gg.TYPE_BYTE
  TQ = gg.TYPE_QWORD
  TF = gg.TYPE_FLOAT
  TDB = gg.TYPE_DOUBLE
  TW = gg.TYPE_WORD
  TD = gg.TYPE_DWORD
  TA = gg.TYPE_AUTO
  SE = gg.SIGN_EQUAL
  SF = gg.SIGN_FLOAT
  TT = gg.toast
  CR = gg.clearResults
  AR = gg.alert
  SR = gg.setRanges
  RA = gg.REGION_ANONYMOUS
  RB = gg.REGION_BAD
  RC = gg.REGION_C_ALLOC
  SV = gg.setValues
  PT = gg.prompt
  PR = print
  FC = gg.processKill
  OE = os.exit
		main =1
function main()
an = gg.choice({
 "[BYPASS LOBBY] ",
 "[ E X I T ]",},nil," ")
 if an==1then a1()end
  if an==2then a7()end
 DYB = -1
 end
 
 

function a1()
  gg.clearResults()
  gg.setRanges(gg.REGION_C_ALLOC)
  gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() == 0 then
    gg.toast("AntiBan Files Try Again")
  else
    gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    n = gg.getResultCount()
    jz = gg.getResults(n)
    for _FORV_3_ = 1, n do     
      gg.addListItems({
        [1] = {
          address = jz[_FORV_3_].address + 48,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      
      gg.addListItems({
        [1] = {
          address = jz[_FORV_3_].address + 100,
          flags = 4,
          freeze = true,
          value = 0
        }
      })      
    end
    gg.toast("AntiBan Activated ")
  end
end
function a7()
  print("LOBBY")
  os.remove("/storage/emulated/0/Music/Recent/.temp")
  os.remove("/storage/emulated/0/Music/Recent/.tmp")
  os.exit()  
 end

while true do
if gg.isVisible(true) then
DYB = 1
gg.setVisible(false)
end
if DYB == 1 then main() end
end
