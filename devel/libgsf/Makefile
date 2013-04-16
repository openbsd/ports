# $OpenBSD: Makefile,v 1.73 2013/04/16 13:17:00 ajacoutot Exp $

COMMENT=		GNOME Structured File library

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.26

CATEGORIES=		devel

SHARED_LIBS+=		gsf-1		114.12

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += bz2 c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pcre png pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gi

LIB_DEPENDS=		archivers/bzip2 \
			graphics/gdk-pixbuf2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
