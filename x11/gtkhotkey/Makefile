# $OpenBSD: Makefile,v 1.2 2009/10/19 10:16:27 jasper Exp $

COMMENT =	platform independent hotkey handling for Gtk+ applications


DISTNAME =	gtkhotkey-0.2.1
PKGNAME =	${DISTNAME}p0
SHARED_LIBS =	gtkhotkey 0.0 #1.0
CATEGORIES =	x11

HOMEPAGE =	http://launchpad.net/gkthotkey

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

# launchpad sucks.
MASTER_SITES =	http://launchpadlibrarian.net/31288851/

MODULES =	devel/gettext \
		textproc/intltool
USE_LIBTOOL =	Yes
CONFIGURE_STYLE =gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs xcb z

.include <bsd.port.mk>
