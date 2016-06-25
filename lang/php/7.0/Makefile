# $OpenBSD: Makefile,v 1.16 2016/06/25 18:55:11 sthen Exp $

PV=		7.0
V=		${PV}.8

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
