# $OpenBSD: Makefile,v 1.13 2016/04/28 18:19:23 sthen Exp $

PV=		7.0
V=		${PV}.5
REVISION=	1

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
