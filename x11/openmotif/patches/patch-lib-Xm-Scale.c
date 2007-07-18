--- lib/Xm/Scale.c.orig	Sat May  7 09:11:14 2005
+++ lib/Xm/Scale.c	Sat Jun 30 10:30:20 2007
@@ -2808,7 +2808,11 @@ GetValueString(
 {
     register int i;
     int  diff, dec_point_size;
+#ifndef X_LOCALE
     struct lconv *loc_values;
+#else
+    char *decimal_point = ".";
+#endif
 	
     if (sw->scale.decimal_points > 0) {
       /* Add one to decimal points to get leading zero, since
@@ -2816,15 +2820,23 @@ GetValueString(
       sprintf (buffer,"%.*d", sw->scale.decimal_points+1, value);
 
       diff = strlen(buffer) - sw->scale.decimal_points;
+#ifndef X_LOCALE
       loc_values = localeconv();
       dec_point_size = strlen(loc_values->decimal_point);
+#else
+      dec_point_size = 1;
+#endif
 
       for (i = strlen(buffer); i >= diff; i--)
 	buffer[i+dec_point_size] = buffer[i];
       
       for (i=0; i<dec_point_size; i++)
-	buffer[diff+i] = loc_values->decimal_point[i];
-
+	buffer[diff+i] =
+#ifndef X_LOCALE
+	    loc_values->decimal_point[i];
+#else
+	    decimal_point[i];
+#endif
     } else
       sprintf (buffer,"%d", value);
 }
