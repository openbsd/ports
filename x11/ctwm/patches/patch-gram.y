--- gram.y.orig	Tue Dec 11 15:38:52 2001
+++ gram.y	Fri Jul  5 15:10:02 2002
@@ -419,7 +419,6 @@
 		| WINDOW_RING		{ list = &Scr->WindowRingL; }
 		  win_list
 		| WINDOW_RING           { Scr->WindowRingAll = TRUE; }
-		;
 		| WINDOW_RING_EXCLUDE    { if (!Scr->WindowRingL)
 		                              Scr->WindowRingAll = TRUE;
 		                          list = &Scr->WindowRingExcludeL; }
@@ -427,6 +426,7 @@
 
 		| WINDOW_GEOMETRIES 	 {  }
 		  wingeom_list
+		;
 
 noarg		: KEYWORD		{ if (!do_single_keyword ($1)) {
 					    twmrc_error_prefix();
@@ -683,8 +683,8 @@
 		| wingeom_entries wingeom_entry
 		;
 
-wingeom_entry	: string string	{ AddToList (&Scr->WindowGeometries, $1, $2) }
-
+wingeom_entry	: string string	{ AddToList (&Scr->WindowGeometries, $1, $2); }
+		;
 
 
 squeeze		: SQUEEZE_TITLE { 
@@ -834,6 +834,7 @@
 occupy_workspc_entry	: string {
 				AddToClientsList ($1, client);
 			  }
+			;
 
 occupy_window_list	: LB occupy_window_entries RB {}
 			;
@@ -845,6 +846,7 @@
 occupy_window_entry	: string {
 				AddToClientsList (workspace, $1);
 			  }
+			;
 
 icon_list	: LB icon_entries RB {}
 		;
@@ -962,6 +964,8 @@
 					  RemoveDQuote(ptr);
 					  $$ = (unsigned char*)ptr;
 					}
+		;
+
 number		: NUMBER		{ $$ = $1; }
 		;
 
