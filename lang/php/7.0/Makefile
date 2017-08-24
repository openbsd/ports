# $OpenBSD: Makefile,v 1.33 2017/08/24 09:45:23 sthen Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.20
REVISION=	1

WANTLIB-main+=	${COMPILER_LIBCXX} ncurses readline

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
