# $OpenBSD: Makefile,v 1.3 2021/10/12 11:31:03 tb Exp $

VERSION =	2.2.18
REVISION =	0

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
