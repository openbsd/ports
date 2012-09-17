--- gram.y.orig	Tue Dec 11 16:38:52 2001
+++ gram.y	Sun Sep  2 18:59:56 2012
@@ -419,7 +419,6 @@ stmt		: error
 		| WINDOW_RING		{ list = &Scr->WindowRingL; }
 		  win_list
 		| WINDOW_RING           { Scr->WindowRingAll = TRUE; }
-		;
 		| WINDOW_RING_EXCLUDE    { if (!Scr->WindowRingL)
 		                              Scr->WindowRingAll = TRUE;
 		                          list = &Scr->WindowRingExcludeL; }
@@ -427,6 +426,7 @@ stmt		: error
 
 		| WINDOW_GEOMETRIES 	 {  }
 		  wingeom_list
+		;
 
 noarg		: KEYWORD		{ if (!do_single_keyword ($1)) {
 					    twmrc_error_prefix();
@@ -683,10 +683,10 @@ wingeom_entries	: /* Empty */
 		| wingeom_entries wingeom_entry
 		;
 
-wingeom_entry	: string string	{ AddToList (&Scr->WindowGeometries, $1, $2) }
+wingeom_entry	: string string	{ AddToList (&Scr->WindowGeometries, $1, $2); }
+		;
 
 
-
 squeeze		: SQUEEZE_TITLE { 
 				    if (HasShape) Scr->SqueezeTitle = TRUE;
 				}
@@ -834,6 +834,7 @@ occupy_workspc_entries	:   /* Empty */
 occupy_workspc_entry	: string {
 				AddToClientsList ($1, client);
 			  }
+			;
 
 occupy_window_list	: LB occupy_window_entries RB {}
 			;
@@ -845,6 +846,7 @@ occupy_window_entries	:   /* Empty */
 occupy_window_entry	: string {
 				AddToClientsList (workspace, $1);
 			  }
+			;
 
 icon_list	: LB icon_entries RB {}
 		;
@@ -962,6 +964,8 @@ string		: STRING		{ ptr = (char *)malloc(strlen((char*
 					  RemoveDQuote(ptr);
 					  $$ = (unsigned char*)ptr;
 					}
+		;
+
 number		: NUMBER		{ $$ = $1; }
 		;
 
