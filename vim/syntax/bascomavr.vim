" Vim syntax file
" BASCOM AVR
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Set characters in keywords
setlocal iskeyword=$,48-57,a-z,A-Z,_,-

" Statements
syn keyword bcavrStatement 1WIRECOUNT 1wirecount 1wirecount
syn keyword bcavrStatement 1WRESET 1wreset 1wreset
syn keyword bcavrStatement 1WREAD 1wread 1wread
syn keyword bcavrStatement 1WSEARCHFIRST 1wsearchfirst 1wsearchfirst
syn keyword bcavrStatement 1WSEARCHNEXT 1wsearchnext 1wsearchnext
syn keyword bcavrStatement 1WVERIFY 1wverify 1wverify
syn keyword bcavrStatement 1WWRITE 1wwrite 1wwrite
syn keyword bcavrStatement ABS abs Abs
syn keyword bcavrStatement ACOS acos Acos
syn keyword bcavrStatement ADR adr Adr
syn keyword bcavrStatement ADR2 adr2 Adr2
syn keyword bcavrStatement ALIAS alias Alias
syn keyword bcavrStatement AS As as
syn keyword bcavrStatement ASC asc Asc
syn keyword bcavrStatement ASIN asin Asin
syn keyword bcavrStatement ATN atn Atn
syn keyword bcavrStatement ATN2 atn2 Atn2
syn keyword bcavrStatement BASE64DEC base64dec Base64dec
syn keyword bcavrStatement BASE64ENC base64enc Base64enc
syn keyword bcavrStatement BAUD baud Baud
syn keyword bcavrStatement BAUD1 baud1 Baud1
syn keyword bcavrStatement BCD bcd Bcd
syn keyword bcavrStatement BIN bin Bin
syn keyword bcavrStatement BINVAL binval Binval
syn keyword bcavrStatement BIN2GRAY bin2gray Bin2gray
syn keyword bcavrStatement BITWAIT bitwait Bitwait
syn keyword bcavrStatement BITS bits Bits
syn keyword bcavrStatement BLOAD bload Bload
syn keyword bcavrStatement BOX box Box
syn keyword bcavrStatement BOXFILL boxfill Boxfill
syn keyword bcavrStatement BSAVE bsave Bsave
syn keyword bcavrStatement BUFSPACE bufspace Bufspace
syn keyword bcavrStatement BYVAL byval Byval
syn keyword bcavrStatement CALL call Call
syn keyword bcavrStatement CHECKSUM checksum Checksum
syn keyword bcavrStatement CHR chr Chr
syn keyword bcavrStatement CIRCLE circle Circle
syn keyword bcavrStatement CLEAR clear Clear
syn keyword bcavrStatement CLS cls Cls
syn keyword bcavrStatement CLOCKDIVISION clockdivision Clockdivision
syn keyword bcavrStatement CLOSE close Close
syn keyword bcavrStatement CLOSESOCKET closesocket Closesocket
syn keyword bcavrStatement CONFIG config Config
syn keyword bcavrStatement CONST const Const
syn keyword bcavrStatement COS cos Cos
syn keyword bcavrStatement COSH cosh Cosh
syn keyword bcavrStatement COUNTER0 counter0 Counter0
syn keyword bcavrStatement COUNTER1 counter1 Counter1
syn keyword bcavrStatement CPEEK cpeek Cpeek
syn keyword bcavrStatement CPEEKH cpeekh Cpeekh
syn keyword bcavrStatement CRC8 crc8 Crc8
syn keyword bcavrStatement CRC16 crc16 Crc16
syn keyword bcavrStatement CRC16UNI crc16uni Crc16uni
syn keyword bcavrStatement CRC32 crc32 Crc32
syn keyword bcavrStatement CRYSTAL crystal Crystal
syn keyword bcavrStatement CURSOR cursor Cursor
syn keyword bcavrStatement DATA data Data
syn keyword bcavrStatement DAYOFWEEK dayofweek Dayofweek
syn keyword bcavrStatement DAYOFYEAR dayofyear Dayofyear
syn keyword bcavrStatement DATE$ date$ Date$
syn keyword bcavrStatement DATE date Date
syn keyword bcavrStatement DBG dbg Dbg
syn keyword bcavrStatement DCF77TIMEZONE dcf77timezone Dcf77timezone
syn keyword bcavrStatement DEBUG debug Debug
syn keyword bcavrStatement DEBOUNCE debounce Debounce
syn keyword bcavrStatement DECR decr Decr
syn keyword bcavrStatement DECLARE declare Declare
syn keyword bcavrStatement FUNCTION function Function
syn keyword bcavrStatement SUB sub Sub
syn keyword bcavrStatement DEF def Def
syn keyword bcavrStatement DEFBIT defbit Defbit
syn keyword bcavrStatement DEFBYTE defbyte Defbyte
syn keyword bcavrStatement DEFINT defint Defint
syn keyword bcavrStatement DEFWORD defword Defword
syn keyword bcavrStatement DEFLNG deflng Deflng
syn keyword bcavrStatement DEFSNG defsng Defsng
syn keyword bcavrStatement DEFDBL defdbl Defdbl
syn keyword bcavrStatement DEFLCDCHAR deflcdchar Deflcdchar
syn keyword bcavrStatement DEG2RAD deg2rad Deg2rad
syn keyword bcavrStatement DELAY delay Delay
syn keyword bcavrStatement DIM dim Dim
syn keyword bcavrStatement DIR dir Dir
syn keyword bcavrStatement DISABLE disable Disable
syn keyword bcavrStatement DISKFREE diskfree Diskfree
syn keyword bcavrStatement DISKSIZE disksize Disksize
syn keyword bcavrStatement DISPLAY display Display
syn keyword bcavrStatement DO do Do
syn keyword bcavrStatement LOOP loop Loop
syn keyword bcavrStatement DriveCheck drivecheck Drivecheck
syn keyword bcavrStatement DriveGetIdentity drivegetidentity Drivegetidentity
syn keyword bcavrStatement DriveInit driveinit Driveinit
syn keyword bcavrStatement DriveReset drivereset Drivereset
syn keyword bcavrStatement DriveReadSector drivereadsector Drivereadsector
syn keyword bcavrStatement DriveWriteSector drivewritesector Drivewritesector
syn keyword bcavrStatement DTMFOUT dtmfout Dtmfout
syn keyword bcavrStatement ECHO echo Echo
syn keyword bcavrStatement ELSE else Else
syn keyword bcavrStatement ELSEIF elseif Elseif
syn keyword bcavrStatement ENABLE enable Enable
syn keyword bcavrStatement ENCODER encoder Encoder
syn keyword bcavrStatement END end End
syn keyword bcavrStatement EOF eof Eof
syn keyword bcavrStatement EXIT exit Exit
syn keyword bcavrStatement EXP exp Exp
syn keyword bcavrStatement FILEATTR fileattr Fileattr
syn keyword bcavrStatement FILEDATE filedate Filedate
syn keyword bcavrStatement FILEDATETIME filedatetime Filedatetime
syn keyword bcavrStatement FILELEN filelen Filelen
syn keyword bcavrStatement FILETIME filetime Filetime
syn keyword bcavrStatement FIX fix Fix
syn keyword bcavrStatement FLUSH flush Flush
syn keyword bcavrStatement FORMAT format Format
syn keyword bcavrStatement FOR for For
syn keyword bcavrStatement NEXT next Next
syn keyword bcavrStatement FOURTHLINE fourthline Fourthline
syn keyword bcavrStatement FRAC frac Frac
syn keyword bcavrStatement FREEFILE freefile Freefile
syn keyword bcavrStatement FUSING fusing Fusing
syn keyword bcavrStatement GET get Get
syn keyword bcavrStatement GETADC getadc Getadc
syn keyword bcavrStatement GETATKBD getatkbd Getatkbd
syn keyword bcavrStatement GETATKBDRAW getatkbdraw Getatkbdraw
syn keyword bcavrStatement GETDSTIP getdstip Getdstip
syn keyword bcavrStatement GETDSTPORT getdstport Getdstport
syn keyword bcavrStatement GETKBD getkbd Getkbd
syn keyword bcavrStatement GETRC getrc Getrc
syn keyword bcavrStatement GETRC5 getrc5 Getrc5
syn keyword bcavrStatement GETTCPREGS gettcpregs Gettcpregs
syn keyword bcavrStatement GETSOCKET getsocket Getsocket
syn keyword bcavrStatement GLCDCMD glcdcmd Glcdcmd
syn keyword bcavrStatement GLCDDATA glcddata Glcddata
syn keyword bcavrStatement GOSUB gosub Gosub
syn keyword bcavrStatement GOTO goto Goto
syn keyword bcavrStatement GRAY2BIN gray2bin Gray2bin
syn keyword bcavrStatement HEX hex Hex
syn keyword bcavrStatement HEXVAL hexval Hexval
syn keyword bcavrStatement HIGH high High
syn keyword bcavrStatement HIGHW highw Highw
syn keyword bcavrStatement HOME home Home
syn keyword bcavrStatement I2CINIT i2cinit I2cinit
syn keyword bcavrStatement I2CRECEIVE i2creceive I2creceive
syn keyword bcavrStatement I2CSEND i2csend I2csend
syn keyword bcavrStatement I2START i2start I2start
syn keyword bcavrStatement I2CSTOP i2cstop I2cstop
syn keyword bcavrStatement I2CRBYTE i2crbyte I2crbyte
syn keyword bcavrStatement I2CWBYTE i2cwbyte I2cwbyte
syn keyword bcavrStatement IDLE idle Idle
syn keyword bcavrStatement IF if If
syn keyword bcavrStatement THEN then Then
syn keyword bcavrStatement ELSE else Else
syn keyword bcavrStatement INCR incr Incr
syn keyword bcavrStatement INITFILESYSTEM initfilesystem Initfilesystem
syn keyword bcavrStatement INITLCD initlcd Initlcd
syn keyword bcavrStatement INKEY inkey Inkey
syn keyword bcavrStatement INP inp Inp
syn keyword bcavrStatement INPUTBIN inputbin Inputbin
syn keyword bcavrStatement INPUTHEX inputhex Inputhex
syn keyword bcavrStatement INPUT input Input
syn keyword bcavrStatement INSTR instr Instr
syn keyword bcavrStatement INT int Int
syn keyword bcavrStatement IP2STR ip2str Ip2str
syn keyword bcavrStatement ISCHARWAITING ischarwaiting Ischarwaiting
syn keyword bcavrStatement KILL kill Kill
syn keyword bcavrStatement LCASE lcase Lcase
syn keyword bcavrStatement LCD lcd Lcd
syn keyword bcavrStatement LCDAT lcdat Lcdat
syn keyword bcavrStatement LCDCONTRAST lcdcontrast Lcdcontrast
syn keyword bcavrStatement LEFT left Left
syn keyword bcavrStatement LEN len Len
syn keyword bcavrStatement LINE line Line
syn keyword bcavrStatement LINE INPUT line input Line input
syn keyword bcavrStatement LTRIM ltrim Ltrim
syn keyword bcavrStatement LOAD load Load
syn keyword bcavrStatement LOADADR loadadr Loadadr
syn keyword bcavrStatement LOADLABEL loadlabel Loadlabel
syn keyword bcavrStatement LOADWORDADR loadwordadr Loadwordadr
syn keyword bcavrStatement LOC loc Loc
syn keyword bcavrStatement LOF lof Lof
syn keyword bcavrStatement LOCAL local Local
syn keyword bcavrStatement LOCATE locate Locate
syn keyword bcavrStatement LOG log Log
syn keyword bcavrStatement LOG10 log10 Log10
syn keyword bcavrStatement LOOKDOWN lookdown Lookdown
syn keyword bcavrStatement LOOKUP lookup Lookup
syn keyword bcavrStatement LOOKUPSTR lookupstr Lookupstr
syn keyword bcavrStatement LOW low Low
syn keyword bcavrStatement LOWERLINE lowerline Lowerline
syn keyword bcavrStatement MACRO macro Macro
syn keyword bcavrStatement MAKEBCD makebcd Makebcd
syn keyword bcavrStatement MAKEINT makeint Makeint
syn keyword bcavrStatement MAKEDEC makedec Makedec
syn keyword bcavrStatement MAKEMODBUS makemodbus Makemodbus
syn keyword bcavrStatement MAKETCP maketcp Maketcp
syn keyword bcavrStatement MAX max Max
syn keyword bcavrStatement MEMCOPY memcopy Memcopy
syn keyword bcavrStatement MIN min Min
syn keyword bcavrStatement MID mid Mid
syn keyword bcavrStatement NBITS nbits Nbits
syn keyword bcavrStatement ON INTERRUPT on interrupt On interrupt
syn keyword bcavrStatement ON VALUE on value On value
syn keyword bcavrStatement OPEN open Open
syn keyword bcavrStatement OUT out Out
syn keyword bcavrStatement PEEK peek Peek
syn keyword bcavrStatement POKE poke Poke
syn keyword bcavrStatement POPALL popall Popall
syn keyword bcavrStatement POWER power Power
syn keyword bcavrStatement POWERDOWN powerdown Powerdown
syn keyword bcavrStatement POWERSAVE powersave Powersave
syn keyword bcavrStatement PRINT print Print
syn keyword bcavrStatement PRINTBIN printbin Printbin
syn keyword bcavrStatement PSET pset Pset
syn keyword bcavrStatement PS2MOUSEXY ps2mousexy Ps2mousexy
syn keyword bcavrStatement PULSEIN pulsein Pulsein
syn keyword bcavrStatement PULSEOUT pulseout Pulseout
syn keyword bcavrStatement PUSHALL pushall Pushall
syn keyword bcavrStatement PUT put Put
syn keyword bcavrStatement QUOTE quote Quote
syn keyword bcavrStatement RAD2DEG rad2deg Rad2deg
syn keyword bcavrStatement RC5SEND rc5send Rc5send
syn keyword bcavrStatement RC5SENDEXT rc5sendext Rc5sendext
syn keyword bcavrStatement RC6SEND rc6send Rc6send
syn keyword bcavrStatement READ read Read
syn keyword bcavrStatement READEEPROM readeeprom Readeeprom
syn keyword bcavrStatement READHITAG readhitag Readhitag
syn keyword bcavrStatement READMAGCARD readmagcard Readmagcard
syn keyword bcavrStatement REM rem Rem
syn keyword bcavrStatement RESET reset Reset
syn keyword bcavrStatement RESTORE restore Restore
syn keyword bcavrStatement RETURN return Return
syn keyword bcavrStatement RIGHT right Right
syn keyword bcavrStatement RND rnd Rnd
syn keyword bcavrStatement ROTATE rotate Rotate
syn keyword bcavrStatement ROUND round Round
syn keyword bcavrStatement RTRIM rtrim Rtrim
syn keyword bcavrStatement SECELAPSED secelapsed Secelapsed
syn keyword bcavrStatement SECOFDAY secofday Secofday
syn keyword bcavrStatement SEEK seek Seek
syn keyword bcavrStatement SELECT select Select
syn keyword bcavrStatement CASE case Case
syn keyword bcavrStatement END end End
syn keyword bcavrStatement SET set Set
syn keyword bcavrStatement SETFONT setfont Setfont
syn keyword bcavrStatement SETTCP settcp Settcp
syn keyword bcavrStatement SETTCPREGS settcpregs Settcpregs
syn keyword bcavrStatement SENDSCAN sendscan Sendscan
syn keyword bcavrStatement SENDSCANKBD sendscankbd Sendscankbd
syn keyword bcavrStatement SERIN serin Serin
syn keyword bcavrStatement SEROUT serout Serout
syn keyword bcavrStatement SETIPPROTOCOL setipprotocol Setipprotocol
syn keyword bcavrStatement SGN sgn Sgn
syn keyword bcavrStatement SHIFT shift Shift
syn keyword bcavrStatement SHIFTCURSOR shiftcursor Shiftcursor
syn keyword bcavrStatement SHIFTIN shiftin Shiftin
syn keyword bcavrStatement SHIFTOUT shiftout Shiftout
syn keyword bcavrStatement SHIFTLCD shiftlcd Shiftlcd
syn keyword bcavrStatement SHOWPIC showpic Showpic
syn keyword bcavrStatement SHOWPICE showpice Showpice
syn keyword bcavrStatement SIN sin Sin
syn keyword bcavrStatement SINH sinh Sinh
syn keyword bcavrStatement SOCKETCONNECT socketconnect Socketconnect
syn keyword bcavrStatement SOCKETLISTEN socketlisten Socketlisten
syn keyword bcavrStatement SOCKETSTAT socketstat Socketstat
syn keyword bcavrStatement SONYSEND sonysend Sonysend
syn keyword bcavrStatement SOUND sound Sound
syn keyword bcavrStatement SPACE space Space
syn keyword bcavrStatement SPC spc Spc
syn keyword bcavrStatement SPIIN spiin Spiin
syn keyword bcavrStatement SPIINIT spiinit Spiinit
syn keyword bcavrStatement SPIMOVE spimove Spimove
syn keyword bcavrStatement SPIOUT spiout Spiout
syn keyword bcavrStatement SPLIT split Split
syn keyword bcavrStatement SQR sqr Sqr
syn keyword bcavrStatement START start Start
syn keyword bcavrStatement STCHECK stcheck Stcheck
syn keyword bcavrStatement STOP stop Stop
syn keyword bcavrStatement STR str Str
syn keyword bcavrStatement STRING string String
syn keyword bcavrStatement SUB sub Sub
syn keyword bcavrStatement SYSSEC syssec Syssec
syn keyword bcavrStatement SYSSECELAPSED syssecelapsed Syssecelapsed
syn keyword bcavrStatement SYSDAY sysday Sysday
syn keyword bcavrStatement SWAP swap Swap
syn keyword bcavrStatement TAN tan Tan
syn keyword bcavrStatement TCPCHECKSUM tcpchecksum Tcpchecksum
syn keyword bcavrStatement TCPREAD tcpread Tcpread
syn keyword bcavrStatement TCPWRITE tcpwrite Tcpwrite
syn keyword bcavrStatement TCPWRITESTR tcpwritestr Tcpwritestr
syn keyword bcavrStatement TANH tanh Tanh
syn keyword bcavrStatement THIRDLINE thirdline Thirdline
syn keyword bcavrStatement TIME$ time$ Time$
syn keyword bcavrStatement TIME time Time
syn keyword bcavrStatement TOGGLE toggle Toggle
syn keyword bcavrStatement TRIM trim Trim
syn keyword bcavrStatement UCASE ucase Ucase
syn keyword bcavrStatement UDPREAD udpread Udpread
syn keyword bcavrStatement UDPWRITE udpwrite Udpwrite
syn keyword bcavrStatement UDPWRITESTR udpwritestr Udpwritestr
syn keyword bcavrStatement UPPERLINE upperline Upperline
syn keyword bcavrStatement VAL val Val
syn keyword bcavrStatement VARPTR varptr Varptr
syn keyword bcavrStatement VER ver Ver
syn keyword bcavrStatement VERSION version Version
syn keyword bcavrStatement WAIT wait Wait
syn keyword bcavrStatement WAITKEY waitkey Waitkey
syn keyword bcavrStatement WAITMS waitms Waitms
syn keyword bcavrStatement WAITUS waitus Waitus
syn keyword bcavrStatement WHILE while While
syn keyword bcavrStatement WEND wend Wend
syn keyword bcavrStatement WRITE write Write
syn keyword bcavrStatement WRITEEEPROM writeeeprom Writeeeprom
syn keyword bcavrStatement X10DETECT x10detect X10detect
syn keyword bcavrStatement X10SEND x10send X10send

" Datatypes
syn keyword bcavrType Bit Byte Word Integer Long Single Double String
syn keyword bcavrType bit byte word integer long single double string
syn keyword bcavrType BIT BYTE WORD INTEGER LONG SINGLE DOUBLE STRING

" Comments
syn match bcavrComment "'.*$"

" Numbers
"integer number, or floating point number without a dot.
syn match  bcavrNumber		"\<\d\+\>"
"floating point number, with dot
syn match  bcavrNumber		"\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match  bcavrNumber		"\.\d\+\>"
"hex number
syn match bcavrNumber 		"&H\x\+\>"
syn match bcavrNumber 		"\$\x\+\>"

" Strings
syn match   bcavrSpecial contained "\\\d\d\d\|\\."
syn region  bcavrString		  start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=bcavrSpecial

" Compiler directives
syn region	bcavrDirective start="^\s*\(%:\|#\)\s*\(if\|else\|endif\)\>" skip="\\$" end="$" end="'"me=s-1
syn keyword bcavrDirective $ASM $asm $Asm
syn keyword bcavrDirective $BAUD $baud $Baud
syn keyword bcavrDirective $BAUD1 $baud1 $Baud1
syn keyword bcavrDirective $BGF $bgf $Bgf
syn keyword bcavrDirective $BOOT $boot $Boot
syn keyword bcavrDirective $CRYSTAL $crystal $Crystal
syn keyword bcavrDirective $DATA $data $Data
syn keyword bcavrDirective $DBG $dbg $Dbg
syn keyword bcavrDirective $DEFAULT $default $Default
syn keyword bcavrDirective $EEPLEAVE $eepleave $Eepleave
syn keyword bcavrDirective $EEPROM $eeprom $Eeprom
syn keyword bcavrDirective $EEPROMHEX $eepromhex $Eepromhex
syn keyword bcavrDirective $EXTERNAL $external $External
syn keyword bcavrDirective $FRAMESIZE $framesize $Framesize
syn keyword bcavrDirective $HWSTACK $hwstack $Hwstack
syn keyword bcavrDirective $INC $inc $Inc
syn keyword bcavrDirective $INCLUDE $include $Include
syn keyword bcavrDirective $INITMICRO $initmicro $Initmicro
syn keyword bcavrDirective $LCD $lcd $Lcd
syn keyword bcavrDirective $LCDPUTCTRL $lcdputctrl $Lcdputctrl
syn keyword bcavrDirective $LCDPUTDATA $lcdputdata $Lcdputdata
syn keyword bcavrDirective $LCDRS $lcdrs $Lcdrs
syn keyword bcavrDirective $LCDVFO $lcdvfo $Lcdvfo
syn keyword bcavrDirective $LIB $lib $Lib
syn keyword bcavrDirective $LOADER $loader $Loader
syn keyword bcavrDirective $LOADERSIZE $loadersize $Loadersize
syn keyword bcavrDirective $MAP $map $Map
syn keyword bcavrDirective $NOCOMPILE $nocompile $Nocompile
syn keyword bcavrDirective $NOINIT $noinit $Noinit
syn keyword bcavrDirective $NORAMCLEAR $noramclear $Noramclear
syn keyword bcavrDirective $PROG $prog $Prog
syn keyword bcavrDirective $PROGRAMMER $programmer $Programmer
syn keyword bcavrDirective $REGFILE $regfile $Regfile
syn keyword bcavrDirective $RESOURCE $resource $Resource
syn keyword bcavrDirective $ROMSTART $romstart $Romstart
syn keyword bcavrDirective $SERIALINPUT $serialinput $Serialinput
syn keyword bcavrDirective $SERIALINPUT1 $serialinput1 $Serialinput1
syn keyword bcavrDirective $SERIALINPUT2LCD $serialinput2lcd $Serialinput2lcd
syn keyword bcavrDirective $SERIALOUTPUT $serialoutput $Serialoutput
syn keyword bcavrDirective $SERIALOUTPUT1 $serialoutput1 $Serialoutput1
syn keyword bcavrDirective $SIM $sim $Sim
syn keyword bcavrDirective $SWSTACK $swstack $Swstack
syn keyword bcavrDirective $TIMEOUT $timeout $Timeout
syn keyword bcavrDirective $TINY $tiny $Tiny
syn keyword bcavrDirective $WAITSTATE $waitstate $Waitstate
syn keyword bcavrDirective $XA $xa $Xa
syn keyword bcavrDirective $XRAMSIZE $xramsize $Xramsize
syn keyword bcavrDirective $XRAMSTART $xramstart $Xramstart

" Operators
syn match   bcavrMathOperator   "-\|=\|[:<>+\*^/\\]\|AND\|OR"

" Subroutine identifiers
syn match 	bcavrSub "^\w.*:$"

" Highlighting
if version >= 508 || !exists("did_bcavr_syntax_inits")
  if version < 508
    let did_bcavr_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

	HiLink bcavrComment 			Comment
	HiLink bcavrNumber 				Number
	HiLink bcavrDirective 		PreProc
	HiLink bcavrStatement 		Statement
	HiLink bcavrString 				String
	HiLink bcavrSpecial 			Special
	HiLink bcavrType 					Type
	HiLink bcavrMathOperator 	Special
	HiLink bcavrSub 					Identifier

endif

let b:current_syntax = "bascomavr"
