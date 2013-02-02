# $OpenBSD: Makefile,v 1.26 2013/02/02 09:24:08 ajacoutot Exp $

COMMENT=	graphic library for gtk+2

GNOME_PROJECT=	gdk-pixbuf
GNOME_VERSION=	2.26.5
REVISION=	1

CATEGORIES=	graphics

SHARED_LIBS +=  gdk_pixbuf-2.0       2600.0   # 2600.0
SHARED_LIBS +=  gdk_pixbuf_xlib-2.0  2600.0   # 2600.0

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += jasper jpeg m pcre png pthread tiff xcb z ffi

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/glib2 \
		graphics/jasper \
		graphics/png \
		graphics/tiff

# configure: detect and set GDK_PIXBUF_USE_GIO_MIME
BUILD_DEPENDS +=	misc/shared-mime-info
RUN_DEPENDS +=		misc/shared-mime-info

MODGNOME_TOOLS=	goi

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-gtk-doc \
		--with-libjasper \
		--with-x11

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

post-install:
	rm ${PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders/*.{a,la}

.include <bsd.port.mk>
