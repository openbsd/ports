# $OpenBSD: Makefile,v 1.2 2019/11/26 10:17:11 sthen Exp $

VERSION =	2.2.18

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
