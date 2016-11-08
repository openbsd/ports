# $OpenBSD: Makefile,v 1.22 2016/11/08 14:38:55 sthen Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-0.2.3
CATEGORIES=		devel sysutils
REVISION=		2

SHARED_LIBS +=  virt-gconfig-1.0          1.0 # 2.3
SHARED_LIBS +=  virt-glib-1.0             1.0 # 2.3
SHARED_LIBS +=  virt-gobject-1.0          1.0 # 2.3

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		https://libvirt.org/sources/glib/ \
			ftp://libvirt.org/libvirt/glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += avahi-client avahi-common crypto curl dbus-1 ffi gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gthread-2.0
WANTLIB += hogweed idn lzma m nettle nghttp2 p11-kit pcre pthread
WANTLIB += ssh2 ssl tasn1 util virt xml2 z

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala
LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
