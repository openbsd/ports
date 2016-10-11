# $OpenBSD: Makefile,v 1.21 2016/10/11 09:02:27 sthen Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.11

WANTLIB-main+=	stdc++ ncurses readline
BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"

.include <bsd.port.mk>
