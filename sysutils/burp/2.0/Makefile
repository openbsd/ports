# $OpenBSD: Makefile,v 1.3 2018/11/30 11:40:33 sthen Exp $

VERSION =	2.0.54
REVISION =	4

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
