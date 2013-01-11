# $OpenBSD: Makefile,v 1.21 2013/01/11 13:44:24 ajacoutot Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.28.4
REVISION=		1

CATEGORIES =		devel x11

SHARED_LIBS +=		pangomm-1.4	10.0 # .1.30

HOMEPAGE =		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += cairo cairomm-1.0 drm expat ffi fontconfig freetype
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs sigc-2.0 stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MODULES =		devel/gettext \
			x11/gnome

LIB_DEPENDS =		devel/pango \
			devel/glib2mm \
			graphics/cairomm

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
