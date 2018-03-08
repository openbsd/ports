# $OpenBSD: Makefile,v 1.1 2018/03/08 14:41:02 sthen Exp $

VERSION =	2.0.54
REVISION =	2

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
