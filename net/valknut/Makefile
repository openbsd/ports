# $OpenBSD: Makefile,v 1.17 2013/03/21 08:46:35 ajacoutot Exp $

COMMENT=	Graphical Direct-Connect client

DISTNAME=	valknut-0.3.7
REVISION=	4
CATEGORIES=	net

HOMEPAGE=	http://wxdcgui.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	converters/libiconv x11/qt3
LIB_DEPENDS=	net/dclib \
		graphics/jpeg \
		archivers/bzip2
WANTLIB =	GL ICE SM X11 Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB +=	Xmu Xrandr Xrender Xt Xxf86vm bz2 c crypto dc drm expat
WANTLIB +=	fontconfig freetype jpeg lcms m mng png pthread
WANTLIB +=	pthread-stubs ssl stdc++ xcb xml2 z

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${MODQT_CONFIGURE_ARGS}
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MOC=${MODQT_MOC} UIC_PATH=${MODQT_UIC}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
