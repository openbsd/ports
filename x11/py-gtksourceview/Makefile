# $OpenBSD: Makefile,v 1.7 2009/04/26 11:01:05 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		python bindings for the GtkSourceView library

GNOME_PROJECT=		pygtksourceview
GNOME_VERSION=		2.4.0
PKGNAME=		py-gtksourceview-${GNOME_VERSION}p0
CATEGORIES=		x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext lang/python x11/gnome

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xml2 z

LIB_DEPENDS=		gtksourceview-2.0::x11/gtksourceview
BUILD_DEPENDS=		${RUN_DEPENDS} \
			::textproc/libxslt \
			::textproc/docbook-xsl
RUN_DEPENDS=		:py-gobject->=2.15.2:devel/py-gobject \
			::x11/py-gtk2

CONFIGURE_STYLE=	gnu

LIBTOOL_FLAGS=		--tag=disable-static

.include <bsd.port.mk>
