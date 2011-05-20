# $OpenBSD: Makefile,v 1.60 2011/05/20 12:34:24 ajacoutot Exp $

COMMENT=		GNOME Structured File library

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.21

CATEGORIES=		devel

SHARED_LIBS+=		gsf-1		114.12

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += bz2 c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pcre png pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		archivers/bzip2 \
			devel/glib2 \
			graphics/gdk-pixbuf2 \
			textproc/libxml

MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	libgsf

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--without-bonobo \
			--without-gnome-vfs \
			--without-python \
			--with-bz2 \
			--with-gio
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GROFF=		Yes

.include <bsd.port.mk>
