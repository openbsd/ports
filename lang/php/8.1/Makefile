# $OpenBSD: Makefile,v 1.7 2022/01/31 21:18:10 sthen Exp $

BROKEN-sparc64=	No fibers support for sparc64

PHP_VERSION=	8.1.2
PHP_PKGSPEC=	>=8.1,<8.2
REVISION=	1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.71

LIB_DEPENDS-main=	devel/capstone/main
WANTLIB-main=		capstone

.include <bsd.port.mk>
