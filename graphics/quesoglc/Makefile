# $OpenBSD: Makefile,v 1.16 2018/10/24 14:28:06 sthen Exp $

COMMENT=	implementation of the OpenGL Character Renderer

DISTNAME=	quesoglc-0.7.2
REVISION=	7
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=quesoglc/}

SHARED_LIBS=	GLC	0.0

HOMEPAGE=	http://quesoglc.sourceforge.net/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= GL GLU X11 Xdamage Xext Xfixes Xxf86vm drm expat fontconfig
WANTLIB += X11-xcb Xau Xdmcp glapi pthread xcb-dri2
WANTLIB+= freetype fribidi m ${COMPILER_LIBCXX} xcb xcb-glx z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/fribidi

CONFIGURE_STYLE= gnu
# Needs GLEW MX
CONFIGURE_ARGS+= --without-glew --disable-executables
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
