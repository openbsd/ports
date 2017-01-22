# $OpenBSD: Makefile,v 1.25 2017/01/22 17:01:32 martijn Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.15

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
