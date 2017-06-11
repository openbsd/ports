# $OpenBSD: Makefile,v 1.25 2017/06/11 15:32:30 jasper Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-1.0.0
CATEGORIES=		devel sysutils

SHARED_LIBS +=  virt-gconfig-1.0          2.0 # 1000.0
SHARED_LIBS +=  virt-glib-1.0             2.0 # 1000.0
SHARED_LIBS +=  virt-gobject-1.0          2.0 # 1000.0

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		https://libvirt.org/sources/glib/ \
			ftp://libvirt.org/libvirt/glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += avahi-client avahi-common crypto curl dbus-1 ffi gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gthread-2.0
WANTLIB += hogweed idn2 lzma m nettle nghttp2 p11-kit pcre pthread
WANTLIB += ssh2 ssl tasn1 util virt xml2 z unistring

MODULES=		devel/gettext \
			textproc/intltool

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala
LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
