# $OpenBSD: Makefile,v 1.7 2009/05/10 16:41:23 ajacoutot Exp $

COMMENT=		Python bindings for goocanvas

GNOME_PROJECT=		pygoocanvas
GNOME_VERSION=		0.14.1
PKGNAME=		py-goocanvas-${VERSION}

CATEGORIES=		graphics

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

BUILD_DEPENDS=		::textproc/libxslt \
			::x11/py-gtk2
RUN_DEPENDS=		::x11/py-gtk2
LIB_DEPENDS=		goocanvas::graphics/goocanvas \
			${MODPY_LIB_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-docs

.include <bsd.port.mk>
