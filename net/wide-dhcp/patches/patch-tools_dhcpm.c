*** tools/dhcpm.c.orig	Mon Jul  7 15:07:06 1997
--- tools/dhcpm.c	Wed Apr 29 15:32:21 1998
***************
*** 427,433 ****
  	       ((option = pickup_opt(rdhcp, DHCPLEN(rudp), DHCP_T2)) != NULL) ?
  	       GETHL(OPTBODY(option)) : 0);
  	printf("\top: %d, xid: %lx, secs: %d, BRDCST flag: %d\n", rdhcp->op,
! 	       ntohl(rdhcp->xid), ntohs(rdhcp->secs), ISBRDCST(rdhcp->flags) ? 1:0);
  	printf("\tciaddr: %s, ", inet_ntoa(rdhcp->ciaddr));
  	printf("yiaddr: %s, ", inet_ntoa(rdhcp->yiaddr));
  	printf("siaddr: %s, ", inet_ntoa(rdhcp->siaddr));
--- 427,433 ----
  	       ((option = pickup_opt(rdhcp, DHCPLEN(rudp), DHCP_T2)) != NULL) ?
  	       GETHL(OPTBODY(option)) : 0);
  	printf("\top: %d, xid: %lx, secs: %d, BRDCST flag: %d\n", rdhcp->op,
! 	       (unsigned long)ntohl(rdhcp->xid), ntohs(rdhcp->secs), ISBRDCST(rdhcp->flags) ? 1:0);
  	printf("\tciaddr: %s, ", inet_ntoa(rdhcp->ciaddr));
  	printf("yiaddr: %s, ", inet_ntoa(rdhcp->yiaddr));
  	printf("siaddr: %s, ", inet_ntoa(rdhcp->siaddr));
