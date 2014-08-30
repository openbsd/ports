# $OpenBSD: Makefile,v 1.5 2014/08/30 07:22:56 ajacoutot Exp $

COMMENT=	accounts management library for GLib applications

DISTNAME=	libaccounts-glib-1.16

SHARED_LIBS +=	accounts-glib        1.0      # 1.3

CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=	https://accounts-sso.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread sqlite3 xml2 z

MASTER_SITES=	${HOMEPAGE}/files/

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	devel/py-gobject3
RUN_DEPENDS=	devel/py-gobject3
LIB_DEPENDS=	textproc/libxml

MODGNOME_TOOLS=	docbook gobject-introspection

USE_GMAKE=Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-gcov \
		--disable-tests

# XXX check if still needed at next update
CONFIGURE_ENV+=	HAVE_GCOV_FALSE='\#'

.include <bsd.port.mk>
