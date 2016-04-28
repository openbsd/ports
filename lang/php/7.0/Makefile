# $OpenBSD: Makefile,v 1.11 2016/04/28 18:06:47 sthen Exp $

PV=		7.0
V=		${PV}.5
REVISION=	1

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
