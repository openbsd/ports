# $OpenBSD: Makefile,v 1.19 2016/08/31 20:32:53 robert Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.10

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
