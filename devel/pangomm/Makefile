# $OpenBSD: Makefile,v 1.29 2016/08/20 11:57:41 ajacoutot Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.40.1

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

MODULES =		x11/gnome

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS =		devel/glib2mm \
			devel/pango \
			graphics/cairomm

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
