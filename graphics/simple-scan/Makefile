# $OpenBSD: Makefile,v 1.1.1.1 2010/03/22 22:33:15 ajacoutot Exp $

COMMENT=	simple scanning utility

GNOME_PROJECT=	simple-scan
GNOME_VERSION=	0.9.7

EXTRACT_SUFX=	.tar.gz

CATEGORIES=	graphics

HOMEPAGE=	https://launchpad.net/simple-scan

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb z

MASTER_SITES=	http://people.ubuntu.com/~robert-ancell/simple-scan/

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	sane.>=2::graphics/sane-backends

DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES= Yes
MODGCONF2_SCHEMAS_DIR= simple-scan

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURED_SHARED}

.include <bsd.port.mk>
