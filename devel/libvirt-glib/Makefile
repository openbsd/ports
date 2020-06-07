# $OpenBSD: Makefile,v 1.31 2020/06/07 15:57:33 ajacoutot Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-3.0.0
REVISION=		0

CATEGORIES=		devel sysutils

SHARED_LIBS +=  virt-gconfig-1.0          2.2 # 2000.0
SHARED_LIBS +=  virt-glib-1.0             2.2 # 2000.0
SHARED_LIBS +=  virt-gobject-1.0          2.2 # 2000.0

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		https://libvirt.org/sources/glib/ \
			ftp://libvirt.org/libvirt/glib/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += crypto curl dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gthread-2.0 hogweed iconv idn2
WANTLIB += intl lzma m nettle nghttp2 p11-kit pcre pthread sasl2
WANTLIB += ssh2 ssl tasn1 unistring util virt xml2 z

MODULES=		textproc/intltool

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
