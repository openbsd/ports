*** relay/relay.c.orig	Mon Jul  7 15:10:02 1997
--- relay/relay.c	Mon Aug 17 18:32:42 1998
***************
*** 117,123 ****
  static void forwarding();
  int open_if();
  
! void
  main(argc, argv)
    int argc;
    char **argv;
--- 117,123 ----
  static void forwarding();
  int open_if();
  
! int
  main(argc, argv)
    int argc;
    char **argv;
***************
*** 179,185 ****
--- 179,190 ----
  #ifndef LOG_PERROR
  #define LOG_PERROR	0
  #endif
+ #ifndef __OpenBSD__
      openlog("relay", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL0);
+ #else
+     /* Using LOG_LOCAL1 to avoid OpenBSD ipmon log conflict */
+     openlog("relay", LOG_PID | LOG_CONS | LOG_PERROR, LOG_LOCAL1);
+ #endif
  
    if (debug == 0) become_daemon();
    if (if_list == NULL) usage();
