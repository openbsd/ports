# $OpenBSD: Makefile,v 1.41 2021/12/18 22:27:45 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.27

DEFAULT_PHP=	Yes
PHP_PKGSPEC=	<7.5
# keep >= 0 for 7.0->7.1
REVISION=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind \
			--enable-inline-optimization

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
