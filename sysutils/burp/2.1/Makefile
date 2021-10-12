# $OpenBSD: Makefile,v 1.4 2021/10/12 11:31:03 tb Exp $

VERSION =	2.1.28
REVISION =	2

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
