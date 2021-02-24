# $OpenBSD: Makefile,v 1.21 2021/02/24 18:00:45 sthen Exp $

PORTROACH=	limit:^7\.4
PHP_VERSION=	7.4.15
PHP_PKGSPEC=	>=7.4,<7.5
REVISION-main=	1
REVISION-imap=	0
REVISION-gd=	0

DEFAULT_PHP=	Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

BUILD_DEPENDS+=		devel/bison
YACC=			bison

CONFIGURE_ARGS+=	--without-valgrind

PHP_EXTENSIONS+=	-xmlrpc

.include <bsd.port.mk>
