# $OpenBSD: Makefile,v 1.5 2010/04/24 08:57:11 jasper Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		0.10.2

SHARED_LIBS +=  json-glib-1.0        2.0      # .1000.2
CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/JsonGlib

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		pcre

MODULES=		devel/gettext x11/gnome

LIB_DEPENDS=		glib-2.0,gobject-2.0,gthread-2.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection=no

.include <bsd.port.mk>
