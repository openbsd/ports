# $OpenBSD: Makefile,v 1.29 2017/04/25 11:21:14 sthen Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.16
REVISION-main=	0

WANTLIB-main+=	${LIBCXX} ncurses readline

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
