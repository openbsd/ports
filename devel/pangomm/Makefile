# $OpenBSD: Makefile,v 1.37 2020/03/21 13:40:45 ajacoutot Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.42.1

CATEGORIES =		devel x11

SHARED_LIBS +=  pangomm-1.4          10.2     # 1.30

HOMEPAGE =		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender cairo cairomm-1.0
WANTLIB += expat ffi fontconfig freetype fribidi glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png sigc-2.0 xcb xcb-render xcb-shm z

MODULES =		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2mm \
			devel/pango \
			graphics/cairomm

CONFIGURE_STYLE =	gnu
MODGNOME_CPPFLAGS =	-I${X11BASE}/include

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
