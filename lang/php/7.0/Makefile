# $OpenBSD: Makefile,v 1.17 2016/06/29 16:14:42 espie Exp $

PV=		7.0
V=		${PV}.8
REVISION =	0

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
