# $OpenBSD: Makefile,v 1.1.1.1 2009/10/13 10:55:19 landry Exp $

COMMENT =	Gtk debugging tool

DISTNAME =	gtkparasite-0.0.1
CATEGORIES =	devel

HOMEPAGE =	http://chipx86.github.com/gtkparasite/

# unreleased, so host a git snapshot labelled 0.0.1
MASTER_SITES =	http://rhaalovely.net/stuff/

SHARED_ONLY =	Yes

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/python
USE_LIBTOOL =	Yes

LIB_DEPENDS =	${MODPY_LIB_DEPENDS} \
		gdk_pixbuf-2.0,gtk-x11-2.0,gdk-x11-2.0::x11/gtk+2

RUN_DEPENDS =	::x11/py-gtk2
BUILD_DEPENDS+=	${RUN_DEPENDS}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs util xcb z

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
