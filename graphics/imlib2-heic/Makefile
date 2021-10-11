# $OpenBSD: Makefile,v 1.1.1.1 2021/10/11 10:59:35 sthen Exp $

COMMENT=	loader for HEIC for Imlib2

GH_ACCOUNT=	vi
GH_PROJECT=	imlib2-heic
GH_TAGNAME=	v0.1.1

CATEGORIES=	graphics

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	Imlib2 heif

LIB_DEPENDS=	graphics/imlib2 \
		multimedia/libheif

USE_GMAKE=	Yes

MAKE_FILE=	makefile
MAKE_FLAGS=	CC="${CC}" \
		OPTS="${CFLAGS} -I${X11BASE}/include" \
		DISABLE_DEBUG=1
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
