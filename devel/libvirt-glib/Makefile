# $OpenBSD: Makefile,v 1.20 2016/10/15 19:14:20 jasper Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-0.2.3
CATEGORIES=		devel sysutils
REVISION=		0

SHARED_LIBS +=  virt-gconfig-1.0          1.0 # 2.3
SHARED_LIBS +=  virt-glib-1.0             1.0 # 2.3
SHARED_LIBS +=  virt-gobject-1.0          1.0 # 2.3

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		https://libvirt.org/sources/glib/ \
			ftp://libvirt.org/libvirt/glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

WANTLIB += avahi-client avahi-common crypto curl dbus-1 ffi
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 lzma
WANTLIB += gthread-2.0 hogweed idn m nettle nghttp2 p11-kit gnutls
WANTLIB += pcre pthread ssh2 ssl tasn1 util virt xml2 z gmp

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala
LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
