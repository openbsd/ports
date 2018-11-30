# $OpenBSD: Makefile,v 1.3 2018/11/30 11:40:33 sthen Exp $

VERSION =	2.1.28
REVISION =	1

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
