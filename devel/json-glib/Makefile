# $OpenBSD: Makefile,v 1.15 2011/09/20 20:51:51 jasper Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

GNOME_PROJECT=		json-glib
GNOME_VERSION=		0.12.6
REVISION=		0

SHARED_LIBS +=  json-glib-1.0        3.1      # 1200.6

CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/JsonGlib

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre z glib-2.0 gobject-2.0 gthread-2.0 gio-2.0 gmodule-2.0

MODULES=		devel/gettext x11/gnome

LIB_DEPENDS=		devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
