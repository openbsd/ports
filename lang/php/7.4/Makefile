# $OpenBSD: Makefile,v 1.30 2021/07/31 10:24:32 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.22
PHP_PKGSPEC=	>=7.4,<7.5

# for 6.9->7.0, keep above version/revision in 6.9-stable
REVISION=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
