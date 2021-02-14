# $OpenBSD: Makefile,v 1.32 2021/02/14 16:44:33 ajacoutot Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-3.0.0
REVISION=		1

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

WANTLIB += crypto curl ffi gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 gthread-2.0 hogweed iconv idn2 intl lzma
WANTLIB += m nettle nghttp2 p11-kit pcre pthread sasl2 ssh2 ssl
WANTLIB += tasn1 unistring util virt xml2 yajl z

MODULES=		textproc/intltool

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
