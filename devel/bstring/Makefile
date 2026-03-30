COMMENT=		string processing library

V=			1.1.0
DISTNAME=		bstring-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS += bstring                   0.1 # 1.1.0

CATEGORIES=		devel

HOMEPAGE=		https://mike.steinert.ca/bstring/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>


# BSD 3-clause
PERMIT_PACKAGE=	Yes

SITES=			https://github.com/msteinert/bstring/releases/download/v${V}/

MODULES=		devel/meson

CONFIGURE_ARGS=		-Denable-docs=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
