*** server/getmac.c.orig	Tue Jun  4 10:27:49 1996
--- server/getmac.c	Wed Apr 29 15:32:21 1998
***************
*** 79,92 ****
--- 79,98 ----
      struct in_ifaddr in;
    } ifaddr;
    u_long addr = 0;
+ #if defined(__OpenBSD__)
+ #else
    char name[16];
    char fullname[16];
+ #endif
    static kvm_t *kd = NULL;
  
    bzero(&arpcom, sizeof(arpcom));
    bzero(&ifaddr, sizeof(ifaddr));
+ #if defined(__OpenBSD__)
+ #else
    bzero(name, sizeof(name));
    bzero(fullname, sizeof(fullname));
+ #endif
  
    /* Open kernel memory for reading */
    kd = kvm_open(0, 0, 0, O_RDONLY, "kvm_open");
***************
*** 104,110 ****
  
    ac = &arpcom;
    ifp = &arpcom.ac_if;
! #if defined(__bsdi__) || defined(__FreeBSD__)
    ep = arpcom.ac_enaddr;
  #else
    ep = arpcom.ac_enaddr.ether_addr_octet;
--- 110,116 ----
  
    ac = &arpcom;
    ifp = &arpcom.ac_if;
! #if defined(__bsdi__) || defined(__FreeBSD__) || defined(__OpenBSD__)
    ep = arpcom.ac_enaddr;
  #else
    ep = arpcom.ac_enaddr.ether_addr_octet;
***************
*** 118,124 ****
--- 124,134 ----
      kvm_close(kd);
      return(-1);
    }
+ #if defined(__OpenBSD__)
+   for ( ; addr; addr = (u_long)ifp->if_list.tqe_next) {
+ #else
    for ( ; addr; addr = (u_long)ifp->if_next) {
+ #endif
      if (kvm_read(kd, addr, (char *)ac, sizeof(*ac)) != sizeof(*ac)) {
        syslog(LOG_ERR, "kvm_read() error in getmac(): %m");
        kvm_close(kd);
***************
*** 129,134 ****
--- 139,148 ----
        continue;
  
      /* Only look at the specified interface */
+ #if defined(__OpenBSD__)
+     if (strcmp(ifp->if_xname, ifname) != 0)
+       continue;
+ #else
      if (kvm_read(kd, (u_long)ifp->if_name, (char *)name, sizeof(name)) !=
                   sizeof(name)) {
        syslog(LOG_ERR, "kvm_read() error in getmac(): %m");
***************
*** 139,144 ****
--- 153,159 ----
      sprintf(fullname, "%s%d", name, ifp->if_unit);
      if (strcmp(fullname, ifname) != 0)
        continue;
+ #endif
  
      kvm_close(kd);
      bcopy(ep, result, 6);
