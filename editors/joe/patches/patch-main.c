--- main.c.orig	Sat Jan 21 19:21:08 1995
+++ main.c	Wed Jan 17 13:06:13 2001
@@ -119,6 +119,7 @@
  if(flg)
   if(maint->curwin->watom->what==TYPETW) return 0;
   else maint->curwin->notify= &term;
+ nredraw(n);
  while(!leave && (!flg || !term))
   {
   MACRO *m;
@@ -187,12 +188,12 @@
  run=namprt(argv[0]);
 #endif 
 
- if(s=getenv("LINES")) sscanf(s,"%d",&lines);
- if(s=getenv("COLUMNS")) sscanf(s,"%d",&columns);
- if(s=getenv("BAUD")) sscanf(s,"%u",&Baud);
+ if(s=(char *)getenv("LINES")) sscanf(s,"%d",&lines);
+ if(s=(char *)getenv("COLUMNS")) sscanf(s,"%d",&columns);
+ if(s=(char *)getenv("BAUD")) sscanf(s,"%u",&Baud);
  if(getenv("DOPADDING")) dopadding=1;
  if(getenv("NOXON")) noxon=1;
- if(s=getenv("JOETERM")) joeterm=s;
+ if(s=(char *)getenv("JOETERM")) joeterm=s;
 
 #ifndef __MSDOS__
  if(!(cap=getcap(NULL,9600,NULL,NULL)))
@@ -234,22 +235,8 @@
 
 #else
 
- s=vsncpy(NULL,0,sc("."));
- s=vsncpy(sv(s),sv(run));
- s=vsncpy(sv(s),sc("rc"));
- c=procrc(cap,s);
- if(c==0) goto donerc;
- if(c==1)
-  {
-  char buf[8];
-  fprintf(stderr,"There were errors in '%s'.  Use it anyway?",s);
-  fflush(stderr);
-  fgets(buf,8,stdin);
-  if(buf[0]=='y' || buf[0]=='Y') goto donerc;
-  }
-
  vsrm(s);
- s=getenv("HOME");
+ s=(char *)getenv("HOME");
  if(s)
   {
   s=vsncpy(NULL,0,sz(s));
