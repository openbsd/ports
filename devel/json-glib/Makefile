# $OpenBSD: Makefile,v 1.11 2011/04/12 08:17:17 ajacoutot Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		0.12.4

SHARED_LIBS +=  json-glib-1.0        3.1      # 1200.4

CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/JsonGlib

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre z glib-2.0 gobject-2.0 gthread-2.0 gio-2.0 gmodule-2.0

MODULES=		devel/gettext x11/gnome

BUILD_DEPENDS=          devel/gobject-introspection
LIB_DEPENDS=		devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection

.include <bsd.port.mk>
