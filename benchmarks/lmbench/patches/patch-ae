--- src/lat_udp.c.orig	Sat Feb 28 23:55:33 1998
+++ src/lat_udp.c	Sat Feb 28 23:56:06 1998
@@ -96,7 +96,8 @@
 
 	while (1) {
 		namelen = sizeof(it);
-		if (recvfrom(sock, &sent, sizeof(sent), 0, &it, &namelen) < 0) {
+		if (recvfrom(sock, &sent, sizeof(sent), 0,
+			     (struct sockaddr*) &it, &namelen) < 0) {
 			fprintf(stderr, "lat_udp server: recvfrom: got wrong size\n");
 			exit(9);
 		}
@@ -108,7 +109,8 @@
 printf("lat_udp server: wanted %d, got %d, resyncing\n", seq, sent);	/**/
 			seq = sent;
 		}
-		if (sendto(sock, &seq, sizeof(seq), 0, &it, sizeof(it)) < 0) {
+		if (sendto(sock, &seq, sizeof(seq), 0,
+			   (struct sockaddr*) &it, sizeof(it)) < 0) {
 			perror("lat_udp sendto");
 			exit(9);
 		}
