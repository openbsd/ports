# $OpenBSD: Makefile,v 1.29 2019/11/07 13:15:55 ajacoutot Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-2.0.0

CATEGORIES=		devel sysutils

SHARED_LIBS +=  virt-gconfig-1.0          2.1 # 2000.0
SHARED_LIBS +=  virt-glib-1.0             2.1 # 2000.0
SHARED_LIBS +=  virt-gobject-1.0          2.1 # 2000.0

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		https://libvirt.org/sources/glib/ \
			ftp://libvirt.org/libvirt/glib/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB =  avahi-client avahi-common crypto curl dbus-1 ffi gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gthread-2.0
WANTLIB += hogweed iconv idn2 intl lzma m nettle nghttp2 p11-kit pcre
WANTLIB += pthread ssh2 ssl tasn1 unistring util virt xml2 z

MODULES=		textproc/intltool

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
