--- conf.c.orig	Fri Jan 13 12:10:33 1995
+++ conf.c	Wed Jan 17 11:45:31 2001
@@ -203,13 +203,6 @@
 #endif
  fprintf(f,"\n");
 
- fprintf(f,"char *getenv();\n");
- if(sizeof(long)==8) fprintf(f,"int time();\n");
- else fprintf(f,"long time();\n");
- fprintf(f,"void *malloc();\n");
- fprintf(f,"void free();\n");
- fprintf(f,"void *calloc();\n");
- fprintf(f,"void *realloc();\n");
  fprintf(f,"int jread();\n");
  fprintf(f,"int jwrite();\n");
  fprintf(f,"\n");
