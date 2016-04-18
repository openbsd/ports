# $OpenBSD: Makefile,v 1.10 2016/04/18 09:45:52 sthen Exp $

PV=		7.0
V=		${PV}.5
REVISION=	1

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

# XXX disable suhosin for 7.0 and enforce apache2 because apache
# is not supported anymore
FLAVORS:=
CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
