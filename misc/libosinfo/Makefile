# $OpenBSD: Makefile,v 1.6 2014/04/01 15:31:46 jasper Exp $

COMMENT=		library for managing information about operating systems

DISTNAME=		libosinfo-0.2.10

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
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

# needed for test
BUILD_DEPENDS +=	devel/check \
			devel/libsoup

LIB_DEPENDS=		devel/glib2 \
			textproc/libxslt

RUN_DEPENDS=		misc/hwdata

# XXX undefined reference to `memcpy'
USE_LIBTOOL=		gnu

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-usb-ids-path=${LOCALBASE}/share/hwdata/usb.ids \
			--with-pci-ids-path=${LOCALBASE}/share/hwdata/pnp.ids \
			--disable-gtk-doc

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=	ac_cv_path_GTKDOC_CHECK="" \
			ac_cv_path_GTKDOC_REBASE="" \
			ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
