# $OpenBSD: Makefile,v 1.18 2016/08/07 07:33:05 landry Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.8
REVISION =	0

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
