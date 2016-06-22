# $OpenBSD: Makefile,v 1.15 2016/06/22 21:18:33 sthen Exp $

PV=		7.0
V=		${PV}.7

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
