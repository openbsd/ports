--- src/utmp.c.orig	Wed Sep 29 18:16:31 1999
+++ src/utmp.c	Thu Mar  7 20:46:30 2002
@@ -68,7 +68,7 @@ static const char cvs_ident[] = "$Id: ut
 #ifdef HAVE_LASTLOG_H
 # include <lastlog.h>
 #endif
-#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__bsdi__)
+#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__)
 # include <ttyent.h>
 #endif
 
@@ -273,7 +273,7 @@ cleanutent(void)
 #else /* USE_SYSV_UTMP */
 /* BSD utmp support */
 
-#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__bsdi__)
+#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__)
 
 /* used to hold the line we are using */
 static char ut_line[32];
@@ -321,7 +321,7 @@ b_login(struct utmp *ut)
   }
 }
 
-#else /* __FreeBSD__ || NetBSD || BSDI */
+#else /* __FreeBSD__ || __NetBSD__ || __OpenBSD__ || __bsdi__ */
 static int utmp_pos = 0;	/* position of utmp-stamp */
 
 /*----------------------------------------------------------------------*
@@ -379,7 +379,7 @@ write_utmp(struct utmp *putmp)
   return rval;
 }
 
-#endif /* __FreeBSD__ || NetBSD || BSDI */
+#endif
 
 /*
  * make a utmp entry
@@ -402,7 +402,7 @@ makeutent(const char *pty, const char *h
     return;
   }
 
-#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__bsdi__)
+#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__)
   strncpy(ut_line, pty, 31);
 
   strncpy(utmp.ut_line, pty, UT_LINESIZE);
@@ -411,7 +411,7 @@ makeutent(const char *pty, const char *h
   utmp.ut_time = time(NULL);
 
   b_login(&utmp);
-#else /* __FreeBSD__ || NetBSD || BSDI */
+#else /* __FreeBSD__ || __NetBSD__ || __OpenBSD__ || __bsdi__ */
   strncpy(utmp.ut_line, ut_id, sizeof(utmp.ut_line));
   strncpy(utmp.ut_name, pwent->pw_name, sizeof(utmp.ut_name));
   strncpy(utmp.ut_host, hostname, sizeof(utmp.ut_host));
@@ -428,10 +428,10 @@ makeutent(const char *pty, const char *h
 void
 cleanutent(void)
 {
-#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__bsdi__)
+#if defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__)
   logout(ut_line);
   logwtmp(ut_line, "", "");
-#else /* __FreeBSD__ */
+#else /* __FreeBSD__ || __NetBSD__ || __OpenBSD__ || __bsdi__ */
   FILE *fd;
 
   privileges(INVOKE);
@@ -445,7 +445,7 @@ cleanutent(void)
     fclose(fd);
   }
   privileges(REVERT);
-#endif /* __FreeBSD__ || NetBSD || BSDI */
+#endif 
 }
 
 #endif /* USE_SYSV_UTMP */
