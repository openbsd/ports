# $OpenBSD: Makefile,v 1.3 2013/03/02 12:28:26 jasper Exp $

COMMENT=		libvirt wrapper suited for GObject-based applications

DISTNAME=		libvirt-glib-0.1.5
CATEGORIES=		devel sysutils

SHARED_LIBS +=  virt-gconfig-1.0          0.1 # 1.5
SHARED_LIBS +=  virt-glib-1.0             0.1 # 1.5
SHARED_LIBS +=  virt-gobject-1.0          0.1 # 1.5

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		ftp://libvirt.org/libvirt/glib/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		devel/gettext \
			lang/python

WANTLIB += avahi-client avahi-common crypto curl dbus-1 ffi gcrypt
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0
WANTLIB += gpg-error gthread-2.0 hogweed idn m nettle p11-kit
WANTLIB += pcre pthread ssh2 ssl tasn1 util virt xml2 z

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala
LIB_DEPENDS=		sysutils/libvirt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
