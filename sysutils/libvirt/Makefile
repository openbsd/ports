# $OpenBSD: Makefile,v 1.66 2020/05/15 10:37:20 ajacoutot Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-1.3.5
REVISION=		11

CATEGORIES=		sysutils devel

SHARED_LIBS +=	virt-qemu                 0.4 # 1003.0
SHARED_LIBS +=	virt                      0.8 # 1003.0
SHARED_LIBS +=	virt-lxc		  0.0 # 1003.0
SHARED_LIBS +=	virt-admin                0.0 # 1003.0

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  avahi-client avahi-common c crypto curl dbus-1 ffi gmp gnutls
WANTLIB += hogweed iconv idn2 intl lzma m nettle nghttp2 p11-kit pthread
WANTLIB += readline ssh2 ssl tasn1 unistring util xml2 z

MASTER_SITES=		https://libvirt.org/sources/ \
			https://libvirt.org/sources/stable_updates/

MODULES=		lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/docbook \
			textproc/docbook2x

LIB_DEPENDS=		net/avahi \
			net/curl \
			security/gnutls \
			security/libssh2 \
			textproc/libxml

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-avahi \
			--with-ssh2 \
			--without-yajl \
			--without-netcf \
			--without-network \
			--without-login-shell \
			--without-wireshark-dissector
# OpenBSD can't act as a virtualization host, so no need for libvirtd.
# If support is added, subtitute /var/lib/{xen,virt,libvirt,...} with /var/db
CONFIGURE_ARGS+=	--without-libvirtd

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		confdir=${PREFIX}/share/examples/libvirt \
			DOCS_DIR=${PREFIX}/share/doc/libvirt/python \
			EXAMPLE_DIR=${PREFIX}/share/doc/libvirt/python/examples \
			HTML_DIR=${PREFIX}/share/doc/libvirt/html

# nwfilters are only used by libvirtd, which is (currently) disabled on OpenBSD
FAKE_FLAGS+=		NWFILTER_DIR=${TMPDIR} \
			FILTERS=""

.include <bsd.port.mk>
