$OpenBSD: patch-sn_data.h,v 1.4 2002/09/11 05:49:59 pvalchev Exp $
--- sn_data.h.orig	Thu Jul 16 10:17:10 1998
+++ sn_data.h	Tue Sep 10 23:02:18 2002
@@ -43,6 +43,36 @@ char *NETDEV[]={"ed"};		
 int HEADSIZE[]={14}; 
 #endif
 
+#ifdef OPENBSD
+#ifdef __i386__
+#define NETDEV_NR     33
+char *NETDEV[]={"ppp","cnw","dc","de","ec","ef","eg","el","ep","ex","fea","fpa","fx","ie","le","ne","ray","rl","sf","sis","sk","sm","ste","ti","tl","tx","vr","wb","we","wi","wx","xe","xl"};
+int HEADSIZE[]={4,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14};
+#elif defined(__sparc__)
+#define NETDEV_NR     6
+char *NETDEV[]={"ppp","be","hme","ie","le","qe"};
+int HEADSIZE[]={4,14,14,14,14,14};
+#elif defined(__m68k__)
+#define NETDEV_NR    9
+char *NETDEV[]={"ppp","ae","ed","es","le","mc","ne","qn","sn"};
+int HEADSIZE[]={4,14,14,14,14,14,14,14,14};
+#elif defined(__mips__)
+#define NETDEV_NR     6
+char *NETDEV[]={"ppp","ec","ep","le","ne","we"};
+int HEADSIZE[]={4,14,14,14,14,14};
+#elif defined(__powerpc__)
+#define NETDEV_NR    5
+char *NETDEV[]={"ppp","bm","de","fxp","gm"};
+int HEADSIZE[]={4,14,14,14,14};
+#elif defined(__alpha__)
+#define NETDEV_NR 23
+char *NETDEV[]={"ppp","dc","de","ne","fxp","fpa","bge","stge","rl","vr","gx","sis","en","tl","le","lmc","wb","sf","ste","ti","skc","sk","an"};
+int HEADSIZE[]={4,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14,14};
+#else
+#error Unknown network devices for this OpenBSD architecture.
+#endif
+#endif
+
 #ifdef BSDI				/* ppp: 4 or 0 ? */
 /*
 #define NETDEV_NR      2
