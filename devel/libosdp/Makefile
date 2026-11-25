COMMENT =	Open Supervised Device Protocol library

V =		3.2.11
PKGNAME =	libosdp-${V}

DIST_TUPLE +=	github osdp-dev libosdp v${V} .
DIST_TUPLE +=	github osdp-dev c-utils 33c08a2bf9ff7fb295677c28174180dec690270a ./utils

SHARED_LIBS =	osdp	0.0

CATEGORIES =	devel

HOMEPAGE =	https://osdp.dev/

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=	Yes

WANTLIB =	crypto

MODULES =	devel/cmake

CONFIGURE_ARGS =	-DOPT_BUILD_STATIC=OFF

.include <bsd.port.mk>
