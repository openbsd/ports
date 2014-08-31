# $OpenBSD: Makefile,v 1.11 2014/08/31 12:27:16 jasper Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-0.1.9
CATEGORIES=		devel sysutils

SHARED_LIBS +=  virt-gconfig-1.0          0.2 # 1.7
SHARED_LIBS +=  virt-glib-1.0             0.2 # 1.7
SHARED_LIBS +=  virt-gobject-1.0          0.2 # 1.7

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		ftp://libvirt.org/libvirt/glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool

WANTLIB += avahi-client avahi-common crypto curl dbus-1 ffi
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 hogweed idn m nettle p11-kit gnutls
WANTLIB += pcre pthread ssh2 ssl tasn1 util virt xml2 z gmp

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala
LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
