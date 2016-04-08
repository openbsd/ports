# $OpenBSD: Makefile,v 1.8 2016/04/08 20:26:13 robert Exp $

PV=		7.0
V=		${PV}.5

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0 and enforce apache2 because apache
# is not supported anymore
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
