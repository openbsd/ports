--- idiff.c.orig	Wed Sep 16 15:58:16 1998
+++ idiff.c	Wed Sep 20 13:12:40 2000
@@ -1,45 +1,109 @@
 /* idiff:  interactive diff */
 
 #include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <string.h>
 #include <ctype.h>
-char	*progname;
-#define	HUGE	10000	/* large number of lines */
+#include <signal.h>
+#include <assert.h>
+#include <sys/stat.h>
+#include <err.h>
+
+#define HUGE 1000000L
+
+char *progname;		/* for error messages */
+char *DIFFOUT = "/tmp/idiff.XXXXXXXX";
+char *TEMPFILE = "/tmp/idiff.XXXXXXXX";
+char *diffout, *tempfile;
+
+FILE *efopen(const char *fname, const char *fmode);
+void onintr(const int signum);
+void idiff(FILE *f1, FILE *f2, FILE *fin, FILE *fout);
+void parse(char *s, int* pfrom1, int* pto1, int* pcmd, int* pfrom2, int* pto2);
+void nskip(FILE *fin, int n);
+void ncopy(FILE *fin, int n, FILE *fout);
 
-main(argc, argv)
-	int argc;
-	char *argv[];
-{
-	FILE *fin, *fout, *f1, *f2, *efopen();
-	char buf[BUFSIZ], *mktemp();
-	char *diffout = "idiff.XXXXXX";
+int
+main(int argc, char	*argv[])
+{
+	FILE *fin, *fout, *f1, *f2;
+	char cmdBuf[1024], *inname1, *inname2;
+	int c, errflg = 0;
+	extern int optind;
+	extern char *optarg;
+	int use_b = 0;		/* true --> use diff -b */
+	struct stat sbuf;
 
 	progname = argv[0];
-	if (argc != 3) {
-		fprintf(stderr, "Usage: idiff file1 file2\n");
+
+	while ((c = getopt(argc, argv, "b")) != EOF)
+		switch (c) {
+		case 'b':
+			use_b = 1;
+			break;
+		case '?':
+		default:
+			errflg++;
+			break;
+		}
+	if (errflg) {
+		(void) fprintf(stderr, "usage: %s xxx [file] ...\n", progname);
+		exit(2);
+	}
+	if (argc-optind != 2) {
+		fprintf(stderr, "usage: idiff file1 file2\n");
 		exit(1);
 	}
-	f1 = efopen(argv[1], "r");
-	f2 = efopen(argv[2], "r");
+	if (signal(SIGINT, SIG_IGN) != SIG_IGN)
+		(void) signal(SIGINT, onintr);
+	inname1 = argv[optind+0];
+	inname2 = argv[optind+1];
+	f1 = efopen(inname1, "r");
+	if (stat(inname2, &sbuf) == -1) {
+		err(1, "Can't open %s", inname2);
+	}
+	/* If arg2 is a directory, do what diff would do, but we do it
+	 * because we need to read the file back in, in bitsies, later on.
+	 */
+	if (S_ISDIR(sbuf.st_mode)) {
+		char*tmp = (char*)malloc(strlen(inname2)+1+strlen(inname1));
+		sprintf(tmp, "%s/%s", inname2, inname1);
+		inname2 = tmp;
+	}
+	f2 = efopen(inname2, "r");
 	fout = efopen("idiff.out", "w");
-	mktemp(diffout);
-	sprintf(buf,"diff %s %s >%s",argv[1],argv[2],diffout);
-	system(buf);
+	if ((diffout = mktemp(strdup(DIFFOUT))) == NULL)
+		err(1, "Can't mktemp(%s)", diffout);
+	(void) sprintf(cmdBuf, "diff %s %s %s >%s", 
+		use_b ? "-b" : "",
+		inname1, inname2, diffout);
+	(void) system(cmdBuf);
 	fin = efopen(diffout, "r");
 	idiff(f1, f2, fin, fout);
-	unlink(diffout);
+	(void) unlink(diffout);
 	printf("%s output in file idiff.out\n", progname);
 	exit(0);
 }
 
-idiff(f1, f2, fin, fout)	/* process diffs */
-	FILE *f1, *f2, *fin, *fout;
+/* process diffs */
+void
+idiff(FILE *f1, FILE *f2, FILE *fin, FILE *fout)
 {
-	char *tempfile = "idiff.XXXXXX";
-	char buf[BUFSIZ], buf2[BUFSIZ], *mktemp();
-	FILE *ft, *efopen();
+	char buf[BUFSIZ], buf2[BUFSIZ], *ed, *getenv();
+	FILE *ft;
 	int cmd, n, from1, to1, from2, to2, nf1, nf2;
 
-	mktemp(tempfile);
+	assert(f1 != NULL);
+	assert(f2 != NULL);
+	assert(fin != NULL);
+	assert(fout != NULL);
+
+	if ((tempfile = mktemp(strdup(TEMPFILE))) == NULL)
+		err(1, "Can't mktemp(%s)", tempfile);
+	if ((ed=getenv("EDITOR")) == NULL)
+		ed = "/bin/ed";
+
 	nf1 = nf2 = 0;
 	while (fgets(buf, sizeof buf, fin) != NULL) {
 		parse(buf, &from1, &to1, &cmd, &from2, &to2);
@@ -52,13 +116,13 @@
 			from2++;
 		printf("%s", buf);
 		while (n-- > 0) {
-			fgets(buf, sizeof buf, fin);
+			(void) fgets(buf, sizeof buf, fin);
 			printf("%s", buf);
 		}
 		do {
 			printf("? ");
-			fflush(stdout);
-			fgets(buf, sizeof buf, stdin);
+			(void) fflush(stdout);
+			(void) fgets(buf, sizeof buf, stdin);
 			switch (buf[0]) {
 			case '>':
 				nskip(f1, to1-nf1);
@@ -75,34 +139,57 @@
 				ncopy(f1, to1+1-from1, ft);
 				fprintf(ft, "---\n");
 				ncopy(f2, to2+1-from2, ft);
-				fclose(ft);
-				sprintf(buf2, "ed %s", tempfile);	
-				system(buf2);
+				(void) fclose(ft);
+				(void) sprintf(buf2, "%s %s", ed, tempfile);
+				(void) system(buf2);
 				ft = efopen(tempfile, "r");
 				ncopy(ft, HUGE, fout);
-				fclose(ft);
+				(void) fclose(ft);
 				break;
 			case '!':
-				system(buf+1);
+				(void) system(buf+1);
 				printf("!\n");
 				break;
+			case 'q':
+				switch (buf[1]) {
+					case '>' :
+						nskip(f1, HUGE);
+						ncopy(f2, HUGE, fout);
+				/* this can fail on immense files */
+						goto out;
+						break;
+					case '<' :
+						nskip(f2, HUGE);
+						ncopy(f1, HUGE, fout);
+				/* this can fail on immense files */
+						goto out;
+						break;
+				default:
+					fprintf(stderr, 
+			"%s: q must be followed by a < or a >!\n", progname);
+					break;
+			}
+			break;
 			default:
-				printf("< or > or e or !\n");
+				fprintf(stderr,
+					"%s: >, q>, <, q<, ! or e only!\n",
+					progname);
 				break;
 			}
-		} while (buf[0]!='<' && buf[0]!='>' && buf[0]!='e');
+		} while (buf[0] != '<' && buf[0]  != '>' 
+				&& buf[0] != 'q' && buf[0] != 'e');
 		nf1 = to1;
 		nf2 = to2;
 	}
-	ncopy(f1, HUGE, fout);	/* can fail on very long files */
-	unlink(tempfile);
+out:
+	ncopy(f1, HUGE, fout);	/* can fail on very large files */
+	(void) unlink(tempfile);
 }
 
-parse(s, pfrom1, pto1, pcmd, pfrom2, pto2)
-	char *s;
-	int *pcmd, *pfrom1, *pto1, *pfrom2, *pto2;
+void
+parse(char *s, int* pfrom1, int* pto1, int* pcmd, int* pfrom2, int* pto2)
 {
-#define a2i(p) while (isdigit(*s)) p = 10*(p) + *s++ - '0'
+#define a2i(p)	while (isdigit(*s)) p = 10 * (p) + *s++ - '0'
 
 	*pfrom1 = *pto1 = *pfrom2 = *pto2 = 0;
 	a2i(*pfrom1);
@@ -120,20 +207,25 @@
 		*pto2 = *pfrom2;
 }
 
-nskip(fin, n)	/* skip n lines of file fin */
-	FILE *fin;
+void
+nskip(FILE *fin, int n)	/* skip n lines of file fin */
 {
 	char buf[BUFSIZ];
 
 	while (n-- > 0)
-		fgets(buf, sizeof buf, fin);
+		/* check for EOF in case called with HUGE */
+		if (fgets(buf, sizeof buf, fin) == NULL)
+			return;
 }
 
-ncopy(fin, n, fout)	/* copy n lines from fin to fout */
-	FILE *fin, *fout;
+void
+ncopy(FILE *fin, int n, FILE *fout)	/* copy n lines from fin to fout */
 {
 	char buf[BUFSIZ];
 
+	assert(fin != NULL);
+	assert(fout != NULL);
+
 	while (n-- > 0) {
 		if (fgets(buf, sizeof buf, fin) == NULL)
 			return;
@@ -141,4 +233,24 @@
 	}
 }
 
-#include "efopen.c"
+/* Interrupt handler */
+void
+onintr(const int signum)
+{
+#ifndef DEBUG
+	(void) unlink(tempfile);
+	(void) unlink(diffout);
+#endif	/* DEBUG */
+	exit(1);
+}
+
+FILE *
+efopen(const char *file, const char *mode) /* fopen file, die if can't */
+{
+	FILE *fp;
+
+	if ((fp = fopen(file, mode)) != NULL)
+		return fp;
+	err(1, "can't open file %s mode %s", file, mode);
+	/*NOTREACHED*/
+}
