--- lib/isc/unix/time.c      2000/06/22 21:58:50     1.26
+++ lib/isc/unix/time.c      2000/09/18 18:50:24     1.26.2.1
@@ -257,7 +257,7 @@
 
 	result->seconds = t->seconds + i->seconds;
 	result->nanoseconds = t->nanoseconds + i->nanoseconds;
-	if (result->nanoseconds > NS_PER_S) {
+	if (result->nanoseconds >= NS_PER_S) {
 		result->seconds++;
 		result->nanoseconds -= NS_PER_S;
 	}
