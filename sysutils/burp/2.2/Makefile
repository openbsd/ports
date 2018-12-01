# $OpenBSD: Makefile,v 1.1.1.1 2018/12/01 09:13:08 florian Exp $

VERSION =	2.2.12

post-extract:
	sed -i 's,"/usr/sbin/%s","${TRUEPREFIX}/sbin/%s",' \
	    ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
