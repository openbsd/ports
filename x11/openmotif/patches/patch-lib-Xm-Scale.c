--- lib/Xm/Scale.c.orig	Mon Nov 20 13:42:57 2000
+++ lib/Xm/Scale.c	Mon Nov 20 17:39:29 2000
@@ -2751,7 +2751,11 @@
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
@@ -2759,15 +2763,23 @@
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
