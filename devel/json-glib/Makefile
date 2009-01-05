# $OpenBSD: Makefile,v 1.1.1.1 2009/01/05 18:11:06 jasper Exp $

COMMENT=		JSON parser for GLib-based libraries and applications

DISTNAME=		json-glib-0.6.2
SHARED_LIBS +=  json-glib-1.0        0.0      # .602.0
CATEGORIES=		devel

HOMEPAGE=		http://live.gnome.org/JsonGlib

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://folks.o-hand.com/~ebassi/sources/

WANTLIB=		pcre

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0,gobject-2.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc

.include <bsd.port.mk>
