# $OpenBSD: Makefile,v 1.54 2016/11/04 11:35:20 sthen Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-1.3.5
REVISION=		1
CATEGORIES=		sysutils devel

SHARED_LIBS +=	virt-qemu                 0.4 # 1003.0
SHARED_LIBS +=	virt                      0.8 # 1003.0
SHARED_LIBS +=	virt-lxc		  0.0 # 1003.0
SHARED_LIBS +=	virt-admin                0.0 # 1003.0

HOMEPAGE=		https://libvirt.org/

MASTER_SITES=		${HOMEPAGE}/sources/ \
			${HOMEPAGE}/sources/stable_updates/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += avahi-client avahi-common c crypto curl dbus-1 ffi gmp gnutls
WANTLIB += hogweed lzma m ncurses nettle nghttp2 p11-kit pthread
WANTLIB += readline ssh2 ssl tasn1 util xml2 z

MODULES=		devel/gettext \
			lang/python

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

FAKE_FLAGS=		confdir=${PREFIX}/share/examples/libvirt \
			DOCS_DIR=${PREFIX}/share/doc/libvirt/python \
			EXAMPLE_DIR=${PREFIX}/share/doc/libvirt/python/examples \
			HTML_DIR=${PREFIX}/share/doc/libvirt/html

# nwfilters are only used by libvirtd, which is (currently) disabled on OpenBSD
FAKE_FLAGS+=		NWFILTER_DIR=${TMPDIR} \
			FILTERS=""

.include <bsd.port.mk>
