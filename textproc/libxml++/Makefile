# $OpenBSD: Makefile,v 1.29 2015/06/08 09:50:59 ajacoutot Exp $

COMMENT=		C++ wrapper for the libxml XML parser library

GNOME_VERSION=		2.38.1
GNOME_PROJECT=		libxml++

SHARED_LIBS +=  xml++-2.6            1.2      # 2.7

CATEGORIES=		textproc

HOMEPAGE=		http://libxmlplusplus.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 lzma m pcre
WANTLIB += pthread sigc-2.0 stdc++ xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2mm \
			textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
