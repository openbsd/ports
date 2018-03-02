# $OpenBSD: Makefile,v 1.43 2018/03/02 22:11:04 sthen Exp $

BROKEN-sparc64=	SIGBUS during phar generation

PV=		7.0
V=		${PV}.28

BUILD_DEPENDS+=	devel/bison

CONFIGURE_ENV+=		YACC="${LOCALBASE}/bin/bison -y"
CONFIGURE_ARGS+=	--with-pcre-jit=no

.include <bsd.port.mk>
