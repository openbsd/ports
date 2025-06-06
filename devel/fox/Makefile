COMMENT =	C++ toolkit for GUI
CATEGORIES =	devel

DISTNAME =	fox-1.6.59

SHARED_LIBS +=	FOX-1.6              3.0      # .0.50
SHARED_LIBS +=	CHART-1.6            2.0      # .0.50

SITES =		http://fox-toolkit.org/ftp/
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
PERMIT_PACKAGE = Yes

FOX =		fox-1.6
SUBST_VARS =	FOX

WANTLIB += ${COMPILER_LIBCXX} GL GLU Lerc X11 X11-xcb Xau Xcursor
WANTLIB += Xdmcp Xext Xfixes Xft Xrandr Xrender Xxf86vm bz2 c
WANTLIB += drm expat fontconfig freetype glapi jpeg lzma m png
WANTLIB += tiff xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-randr
WANTLIB += xcb-shm xcb-sync xcb-xfixes xshmfence z zstd

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
