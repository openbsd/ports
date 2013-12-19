# $OpenBSD: Makefile,v 1.1.1.1 2013/12/19 18:06:05 ajacoutot Exp $

COMMENT=		library for managing information about operating systems

DISTNAME=		libosinfo-0.2.9

SHARED_LIBS +=  osinfo-1.0                0.0 # 2.9

CATEGORIES=		misc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://libosinfo.org/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread xml2 xslt z

MASTER_SITES=		https://fedorahosted.org/releases/l/i/libosinfo/

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gi vala

LIB_DEPENDS=		devel/glib2 \
			textproc/libxslt

RUN_DEPENDS=		misc/hwdata

# XXX
USE_LIBTOOL=		gnu

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-usb-ids-path=${LOCALBASE}/share/hwdata/usb.ids \
			--with-pci-ids-path=${LOCALBASE}/share/hwdata/pnp.ids

.include <bsd.port.mk>
