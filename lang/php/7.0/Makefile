# $OpenBSD: Makefile,v 1.9 2016/04/13 11:42:59 naddy Exp $

PV=		7.0
V=		${PV}.5
REVISION-fastcgi=0

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0 and enforce apache2 because apache
# is not supported anymore
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
