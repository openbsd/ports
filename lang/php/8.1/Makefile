# $OpenBSD: Makefile,v 1.8 2022/02/10 00:21:37 sthen Exp $

BROKEN-sparc64=	No fibers support for sparc64

PHP_VERSION=	8.1.2
PHP_PKGSPEC=	>=8.1,<8.2
REVISION=	1

DEBUG_PACKAGES=		${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.71

# BDEP needed because -main is knocked out for "embed" builds
BUILD_DEPENDS=		devel/capstone/main
LIB_DEPENDS-main=	devel/capstone/main
WANTLIB-main=		capstone

.include <bsd.port.mk>
