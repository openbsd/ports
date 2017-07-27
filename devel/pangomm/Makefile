# $OpenBSD: Makefile,v 1.32 2017/07/27 09:34:38 sthen Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.40.1
REVISION =		0

CATEGORIES =		devel x11

SHARED_LIBS +=  pangomm-1.4          10.2     # 1.30

HOMEPAGE =		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xrender cairo cairomm-1.0 expat ffi fontconfig
WANTLIB += freetype glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 xcb xcb-render xcb-shm z
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		x11/gnome

# c++11
COMPILER =		gcc

LIB_DEPENDS =		devel/glib2mm \
			devel/pango \
			graphics/cairomm

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
