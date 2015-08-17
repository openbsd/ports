# $OpenBSD: Makefile,v 1.29 2015/08/17 19:10:12 sthen Exp $

COMMENT =	C++ toolkit for GUI
CATEGORIES =	devel

DISTNAME =	fox-1.6.49
REVISION =	1

SHARED_LIBS +=	FOX-1.6              2.1      # .0.49
SHARED_LIBS +=	CHART-1.6            1.1      # .0.49
MASTER_SITES =	http://ftp.fox-toolkit.org/pub/
HOMEPAGE =	http://www.fox-toolkit.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	archivers/bzip2 \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ENV += \
	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib" 
CONFIGURE_ARGS += \
	--x-includes="${X11BASE}/include -I${X11BASE}/include/freetype2" \
	--x-libraries=${X11BASE}/lib \
	--with-xft

# LGPL or looser
PERMIT_PACKAGE_CDROM = Yes

FOX =		fox-1.6
SUBST_VARS =	FOX

WANTLIB =	GL GLU X11 Xau Xcursor Xdmcp Xext Xfixes Xrender Xrandr c m \
		stdc++ z pthread Xft expat fontconfig freetype \
		pthread-stubs xcb bz2 jpeg png tiff Xdamage Xxf86vm drm \
		X11-xcb glapi xcb-dri2 xcb-glx

.include <bsd.port.mk>
