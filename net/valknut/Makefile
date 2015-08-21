# $OpenBSD: Makefile,v 1.19 2015/08/21 19:17:10 sthen Exp $

COMMENT=	graphical Direct-Connect client

DISTNAME=	valknut-0.3.7
REVISION=	5
CATEGORIES=	net

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm bz2 c crypto dc drm expat
WANTLIB += fontconfig freetype jpeg lcms m mng png pthread
WANTLIB += pthread-stubs ssl stdc++ xcb xml2 z
WANTLIB += X11-xcb Xau Xdmcp glapi lzma xcb-dri2 xcb-glx

MODULES=	converters/libiconv x11/qt3
LIB_DEPENDS=	net/dclib \
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
