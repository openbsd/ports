# $OpenBSD: Makefile,v 1.26 2021/05/02 14:47:12 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.18
PHP_PKGSPEC=	>=7.4,<7.5

# keep above 6.9-stable
REVISION=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
