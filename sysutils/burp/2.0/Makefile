# $OpenBSD: Makefile,v 1.4 2021/10/12 11:31:03 tb Exp $

VERSION =	2.0.54
REVISION =	5

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/client/monitor/status_client_ncurses.c

.include <bsd.port.mk>
