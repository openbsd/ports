# $OpenBSD: Makefile,v 1.10 2022/03/05 14:23:43 sthen Exp $

BROKEN-sparc64=	No fibers support for sparc64

PHP_VERSION=	8.1.3
PHP_PKGSPEC=	>=8.1,<8.2
REVISION-main=	0
REVISION-curl=	0
REVISION-gd=	0

DEBUG_PACKAGES=		${BUILD_PACKAGES}

AUTOCONF_VERSION=	2.71

# BDEP needed because -main is knocked out for "embed" builds
BUILD_DEPENDS=		devel/capstone/main
LIB_DEPENDS-main=	devel/capstone/main
WANTLIB-main=		capstone

.include <bsd.port.mk>
