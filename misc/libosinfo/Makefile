# $OpenBSD: Makefile,v 1.12 2014/07/09 13:55:59 ajacoutot Exp $

COMMENT=		library for managing information about operating systems

DISTNAME=		libosinfo-0.2.10
REVISION=		3

SHARED_LIBS +=  osinfo-1.0           0.0      # .2.10

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread xml2 xslt z

MASTER_SITES=		https://fedorahosted.org/releases/l/i/libosinfo/

MODULES=		devel/gettext \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala

# needed for test
BUILD_DEPENDS +=	devel/check \
			devel/libsoup

LIB_DEPENDS=		devel/glib2 \
			textproc/libxslt

RUN_DEPENDS=		misc/hwdata

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-usb-ids-path=${LOCALBASE}/share/hwdata/usb.ids \
			--with-pci-ids-path=${LOCALBASE}/share/hwdata/pnp.ids

# https://fedorahosted.org/libosinfo/ticket/5
MAKE_FLAGS=		NO_UNDEFINED_FLAGS=

.include <bsd.port.mk>
