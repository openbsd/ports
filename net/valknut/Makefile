# $OpenBSD: Makefile,v 1.26 2019/07/12 21:02:24 sthen Exp $

COMMENT=	graphical Direct-Connect client

DISTNAME=	valknut-0.3.7
REVISION=	8
CATEGORIES=	net

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm bz2 c crypto dc drm expat
WANTLIB += fontconfig freetype iconv jpeg lcms m mng png pthread
WANTLIB += ssl ${COMPILER_LIBCXX} xcb xml2 z
WANTLIB += X11-xcb Xau Xdmcp glapi lzma xcb-dri2 xcb-glx

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	x11/qt3
LIB_DEPENDS=	net/dclib \
		converters/libiconv \
		graphics/jpeg \
		archivers/bzip2

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MOC=${MODQT_MOC} UIC_PATH=${MODQT_UIC}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
