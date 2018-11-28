# $OpenBSD: Makefile,v 1.2 2018/11/28 15:35:42 sthen Exp $

VERSION =	2.1.28
REVISION =	0

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
