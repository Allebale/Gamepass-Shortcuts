LOOP:
  Sleep, 3000
  If ProcessExist("chrome.exe")
  Send {F11}
  goto CHECK
  
CHECK:
  Sleep, 5000
  If ProcessExist("chrome.exe")
  goto CHECK
  If !ProcessExist("chrome.exe")
  goto LOOP

  ProcessExist(Name){
	  Process,Exist,%Name%
	  return Errorlevel
  }
  goto CHECK