--- audio.c.orig	Tue Apr  6 11:53:05 1999
+++ audio.c	Wed Aug  2 06:10:39 2000
@@ -68,41 +68,42 @@
 {
 	int fmts;
 	int i,j,k,k1=NUM_RATES-1;
-	struct audio_info_struct ai1 = *ai;
 
         if (param.outmode != DECODE_AUDIO) {
 		memset(capabilities,1,sizeof(capabilities));
 		return;
 	}
 
-	memset(capabilities,0,sizeof(capabilities));
+	memset(capabilities,-1,sizeof(capabilities));
 	if(param.force_rate) {
 		rates[NUM_RATES-1] = param.force_rate;
 		k1 = NUM_RATES;
 	}
 
-	if(audio_open(&ai1) < 0) {
-		perror("audio");
-		exit(1);
-	}
+   	if(param.verbose > 1) {
+		struct audio_info_struct ai1 = *ai;
+		if(audio_open(&ai1) < 0) {
+			perror("audio");
+			exit(1);
+		}
 
-	for(i=0;i<NUM_CHANNELS;i++) {
-		for(j=0;j<NUM_RATES;j++) {
-			ai1.channels = channels[i];
-			ai1.rate = rates[j];
-			fmts = audio_get_formats(&ai1);
-			if(fmts < 0)
-				continue;
-			for(k=0;k<NUM_ENCODINGS;k++) {
-				if((fmts & encodings[k]) == encodings[k])
-					capabilities[i][k][j] = 1;
+		for(i=0;i<NUM_CHANNELS;i++) {
+			for(j=0;j<NUM_RATES;j++) {
+				ai1.channels = channels[i];
+				ai1.rate = rates[j];
+				fmts = audio_get_formats(&ai1);
+				if(fmts < 0)
+					continue;
+				for(k=0;k<NUM_ENCODINGS;k++) {
+					if((fmts & encodings[k]) == encodings[k])
+						capabilities[i][k][j] = 1;
+					else
+						capabilities[i][k][j] = 0;
+				}
 			}
 		}
-	}
-
-	audio_close(&ai1);
 
-	if(param.verbose > 1) {
+		audio_close(&ai1);
 		fprintf(stderr,"\nAudio capabilities:\n        |");
 		for(j=0;j<NUM_ENCODINGS;j++) {
 			fprintf(stderr," %5s |",audio_val2name[j].sname);
@@ -144,7 +145,19 @@
 
         if(rn >= 0) {
                 for(i=f0;i<f2;i++) {
-                        if(capabilities[c][i][rn]) {
+			if(capabilities[c][i][rn] == (char)-1) {
+				int fmts, k;
+				ai->channels = channels[c];
+				ai->rate = rates[rn];
+				fmts = audio_get_formats(ai);
+				for(k=0;k<NUM_ENCODINGS;k++) {
+					if ((fmts & encodings[k]) == encodings[k])
+						capabilities[c][k][rn] = 1;
+					else
+						capabilities[c][k][rn] = 0;
+				}
+			}
+                        if(capabilities[c][i][rn] == 1) {
                                 ai->rate = rates[rn];
                                 ai->format = encodings[i];
                                 ai->channels = channels[c];
@@ -160,7 +173,11 @@
  * c=num of channels of stream
  * r=rate of stream
  */
-void audio_fit_capabilities(struct audio_info_struct *ai,int c,int r)
+#ifdef OPENBSD
+void audio_fit_capabilities(struct audio_info_struct *ai, int c, int r)
+#else
+static void do_audio_fit_capabilities(struct audio_info_struct *ai,int c,int r)
+#endif
 {
 	int rn;
 	int f0=0;
@@ -247,6 +264,23 @@
 	exit(1);
 }
 
+#ifndef OPENBSD
+void audio_fit_capabilities(struct audio_info_struct *ai,int c,int r)
+{
+	struct audio_info_struct ai1 = *ai;
+	
+	if (param.verbose <= 1 && audio_open(&ai1) >= 0) {
+		do_audio_fit_capabilities(&ai1, c, r);
+		ai->rate = ai1.rate;
+		ai->channels = ai1.channels;
+		ai->format = ai1.format;
+		audio_close(&ai1);
+	} else {
+		do_audio_fit_capabilities(ai, c, r);
+	}
+}
+#endif
+	
 char *audio_encoding_name(int format)
 {
 	int i;
@@ -258,7 +292,7 @@
 	return "Unknown";
 }
 
-#if !defined(SOLARIS) && !defined(__NetBSD__) || defined(NAS)
+#if !defined(SOLARIS) && !defined(__NetBSD__) && !defined(__OpenBSD__) || defined(NAS)
 void audio_queueflush(struct audio_info_struct *ai)
 {
 }
