# $OpenBSD: Makefile,v 1.67 2011/12/16 08:10:05 ajacoutot Exp $

COMMENT=		GNOME Structured File library

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.22

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

WANTLIB += bz2 c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pcre png pthread xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		archivers/bzip2 \
			graphics/gdk-pixbuf2 \
			textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-python \
			--with-bz2 \
			--with-gio

USE_GROFF=		Yes

.include <bsd.port.mk>
