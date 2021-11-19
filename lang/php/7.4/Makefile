# $OpenBSD: Makefile,v 1.40 2021/11/19 12:47:00 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.26

DEFAULT_PHP=	Yes
PHP_PKGSPEC=	<7.5
# keep >= 0 for 7.0->7.1
REVISION=	2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind \
			--enable-inline-optimization

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
