--- nessus-plugins/trusted-scripts/nikto_wrapper.nasl.orig	2003-10-15 09:15:39.000000000 +0200
+++ nessus-plugins/trusted-scripts/nikto_wrapper.nasl	2004-04-11 11:07:04.000000000 +0200
@@ -62,7 +62,7 @@ no404 = get_kb_item("www/no404/" + port)
 if (no404 || no404 !~ '^[ \t\n\r]*$') exit(0);
 
 i = 0;
-argv[i++] = "nikto.pl";
+argv[i++] = "nikto";
 
 httpver = get_kb_item("http/"+port);
 if (httpver == "11")
@@ -98,7 +98,7 @@ if (user)
   argv[i++] = s;
 }
 
-r = pread(cmd: "nikto.pl", argv: argv, cd: 1);
+r = pread(cmd: "nikto", argv: argv, cd: 1);
 if (! r) exit(0);	# error
 
 report = 'Here is the Nikto report:\n';
