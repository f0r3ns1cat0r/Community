rule infostealer_win_phoenixwave {
    meta:
        id = "67c05ea8-2f1b-4c60-b108-e05d7d0c6508"
        version = "1.0"
        description = "Detect the PhoenixWave infostealer based on specific strings"
        author = "Sekoia.io"
        creation_date = "2022-04-07"
        classification = "TLP:CLEAR"
        
    strings:
        $str0 = "##################################################\n                  Information\n##################################################\n" wide
        $str1 = "Specify a single character: either D or F" wide
        $str2 = "// This SFX source file was generated by DotNetZip " wide
        $str3 = "aHR0cDovL2lwLWFwaS5jb20vanNvbg==" wide //ip-api.com/json
        $str4 = "TG9jYWxBcHBEYXRh" wide //LocalAppData
        $str5 = "UGhvZW5peFdhdmU=" wide //PhoenixWave
        $str6 = "virustotal" wide
        $str7 = "SELECT * FROM win32_operatingsystem" wide
        $str8 = "SELECT * FROM Win32_VideoController" wide
        
        $app0 = "\\discordcanary\\Local Storage\\leveldb" wide
        $app1 = "\\discordptb\\Local Storage\\leveldb" wide
        $app2 = "\\discorddevelopment\\Local Storage\\leveldb" wide
        $app3 = "\\D877F783D5D3EF8C\\" wide //Telegram
        $app4 = "\\IndexedDB\\file__0.indexeddb.leveldb" wide
        $app5 = "\\Steam\\Games.txt" wide
        $app6 = "nkbihfbeogaeaoehlefnkodbefgpgknn" wide
        $app7 = "fhbohimaelbohpjbbldcngcnapndodjp" wide
        $app8 = "fnjhmkhhmkbjkkabndcnnogagogbneec" wide
        $app9 = "\\Opera Software\\Opera GX Stable" wide
        
    condition:
        uint16(0)==0x5A4D and
        7 of ($str*) and 8 of ($app*)
}
        