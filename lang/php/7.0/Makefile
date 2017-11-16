# $OpenBSD: Makefile,v 1.37 2017/11/16 18:37:01 martijn Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.23
REVISION=	0

WANTLIB-main+=	${COMPILER_LIBCXX} ncurses readline

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
