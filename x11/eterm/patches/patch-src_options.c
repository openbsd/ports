--- src/options.c.orig	Tue Nov  2 08:34:35 1999
+++ src/options.c	Thu Aug 10 20:42:57 2000
@@ -1328,6 +1328,10 @@
 #define CTX_UNDEF        ((unsigned char) -1)
 #define CTX_MAX          8
 
+/* Template for mkstemp */
+
+#define MKSTEMP_TEMPLATE "eterm.XXXXXXXXXX"
+
 /* This structure defines a context and its attributes */
 
 struct context_struct {
@@ -1566,6 +1570,7 @@
   unsigned long fsize, cnt1 = 0, cnt2 = 0;
   const unsigned long max = CONFIG_BUFF - 1;
   char *Command, *Output, *EnvVar, *OutFile;
+  int fd = -1;
   FILE *fp;
 
   ASSERT_RVAL(s != NULL, (char *) NULL);
@@ -1716,40 +1721,51 @@
 	  }
           ASSERT(l < CONFIG_BUFF);
 	  Command[l] = 0;
-	  OutFile = tmpnam(NULL);
-	  if (l + strlen(OutFile) + 8 > CONFIG_BUFF) {
-	    print_error("Parse error in file %s, line %lu:  Cannot execute command, line too long",
-			file_peek_path(), file_peek_line());
-	    return ((char *) NULL);
-	  }
-	  strcat(Command, " >");
-	  strcat(Command, OutFile);
-	  system(Command);
-	  if ((fp = fopen(OutFile, "rb")) != NULL) {
-	    fseek(fp, 0, SEEK_END);
-	    fsize = ftell(fp);
-	    rewind(fp);
-	    if (fsize) {
-	      Output = (char *) MALLOC(fsize + 1);
-	      fread(Output, fsize, 1, fp);
-	      Output[fsize] = 0;
-	      fclose(fp);
-	      remove(OutFile);
-	      Output = CondenseWhitespace(Output);
-	      strncpy(new + j, Output, max - j);
-              cnt1 = strlen(Output) - 1;
-              cnt2 = max - j - 1;
-	      j += MIN(cnt1, cnt2);
-	      FREE(Output);
+          OutFile = (char *) MALLOC(sizeof(MKSTEMP_TEMPLATE) + sizeof(P_tmpdir) + 1);
+          strcpy(OutFile,P_tmpdir);
+          strcat(OutFile,MKSTEMP_TEMPLATE);
+	  if ((fd = mkstemp( OutFile )) != -1)
+          { 
+	    if (l + strlen(OutFile) + 8 > CONFIG_BUFF) {
+	      print_error("Parse error in file %s, line %lu:  Cannot execute command, line too long",
+			  file_peek_path(), file_peek_line());
+	      return ((char *) NULL);
+	    }
+            close( fd );
+	    strcat(Command, " >>");
+	    strcat(Command, OutFile);
+	    system(Command);
+	    if ((fp = fopen(OutFile, "rb")) != NULL) {
+	      fseek(fp, 0, SEEK_END);
+	      fsize = ftell(fp);
+	      rewind(fp);
+	      if (fsize) {
+	        Output = (char *) MALLOC(fsize + 1);
+	        fread(Output, fsize, 1, fp);
+	        Output[fsize] = 0;
+	        fclose(fp);
+	        remove(OutFile);
+	        Output = CondenseWhitespace(Output);
+	        strncpy(new + j, Output, max - j);
+                cnt1 = strlen(Output) - 1;
+                cnt2 = max - j - 1;
+	        j += MIN(cnt1, cnt2);
+	        FREE(Output);
+	      } else {
+	        print_warning("Command at line %lu of file %s returned no output.", file_peek_line(), file_peek_path());
+	      }
 	    } else {
-	      print_warning("Command at line %lu of file %s returned no output.", file_peek_line(), file_peek_path());
+	      print_warning("Output file %s could not be created.  (line %lu of file %s)", NONULL(OutFile),
+	  		    file_peek_line(), file_peek_path());
 	    }
-	  } else {
-	    print_warning("Output file %s could not be created.  (line %lu of file %s)", NONULL(OutFile),
-			  file_peek_line(), file_peek_path());
-	  }
-	  FREE(Command);
-	} else {
+          }
+          else {
+	    print_warning("Output file %s could not be opened.  (line %lu of file %s)", NONULL(OutFile),
+	  	    	  file_peek_line(), file_peek_path());
+          }
+          FREE(Command);
+          FREE(OutFile);
+  	} else {
 	  new[j] = *pbuff;
 	}
 #else
