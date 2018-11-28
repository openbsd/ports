# $OpenBSD: Makefile,v 1.2 2018/11/28 15:35:42 sthen Exp $

VERSION =	2.0.54
REVISION =	3

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
