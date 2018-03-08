# $OpenBSD: Makefile,v 1.1 2018/03/08 14:41:02 sthen Exp $

VERSION =	2.1.28

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
