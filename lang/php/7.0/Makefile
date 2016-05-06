# $OpenBSD: Makefile,v 1.14 2016/05/06 19:59:05 sthen Exp $

PV=		7.0
V=		${PV}.6

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
