# $OpenBSD: Makefile,v 1.35 2017/08/24 10:52:48 sthen Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.22

WANTLIB-main+=	${COMPILER_LIBCXX} ncurses readline

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
