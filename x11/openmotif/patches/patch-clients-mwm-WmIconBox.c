--- clients/mwm/WmIconBox.c.orig	Tue May  2 11:53:42 2000
+++ clients/mwm/WmIconBox.c	Wed Aug  9 19:29:42 2000
@@ -2937,6 +2937,7 @@
 	if (majorDimension != pIBD->IPD.placementCols)
 	{
 	    pIBD->IPD.placementCols = majorDimension;
+            if (pIBD->IPD.placementCols == 0) pIBD->IPD.placementCols++;
 	}
     }
     else
@@ -2954,6 +2955,7 @@
 	if (majorDimension != pIBD->IPD.placementRows)
 	{
 	    pIBD->IPD.placementRows = majorDimension;
+            if (pIBD->IPD.placementRows == 0) pIBD->IPD.placementRows++;
 	}
     }
 
