# $OpenBSD: Makefile,v 1.71 2020/07/09 16:49:37 ajacoutot Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-6.5.0

CATEGORIES=		sysutils devel emulators

SHARED_LIBS +=  virt                 1.0      # 6005.0
SHARED_LIBS +=  virt-qemu            1.0      # 6005.0
SHARED_LIBS +=  virt-lxc             1.0      # 6005.0
SHARED_LIBS +=  virt-admin           1.0      # 6005.0

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curl dbus-1 ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 hogweed iconv idn2 intl lzma
WANTLIB += m nettle nghttp2 p11-kit pcre pthread sasl2 ssh2 ssl
WANTLIB += tasn1 unistring util xml2 yajl z

MASTER_SITES=		https://libvirt.org/sources/
EXTRACT_SUFX=		.tar.xz

SEPARATE_BUILD=		Yes

MODULES=		lang/python

MODPY_RUNDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/flake8 \
			textproc/libxslt \
			textproc/py-docutils${MODPY_FLAVOR}

LIB_DEPENDS=		devel/glib2 \
			devel/libyajl \
			net/curl \
			security/cyrus-sasl2 \
			security/gnutls \
			security/libssh2 \
			textproc/libxml \
			x11/dbus

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-DAI_V4MAPPED=0" \
			ac_cv_path_RST2MAN=rst2man${MODPY_BIN_SUFFIX} \
			ac_cv_path_DNSMASQ=${LOCALBASE}/sbin/dnsmasq \
			ac_cv_path_AUGPARSE=${LOCALBASE}/bin/augparse \
			ac_cv_path_DMIDECODE=${LOCALBASE}/sbin/dmidecode \
			ac_cv_path_QEMU_DBUS_DAEMON=${LOCALBASE}/bin/dbus-daemon \
			ac_cv_path_QEMU_BRIDGE_HELPER= \
			ac_cv_path_QEMU_PR_HELPER= \
			ac_cv_path_QEMU_SLIRP_HELPER= \
			ac_cv_path_BHYVECTL= \
			ac_cv_path_BHYVELOAD= \
			ac_cv_path_QEMU_DBUS_DAEMON=

CONFIGURE_ARGS=		--without-wireshark-dissector \
			--without-libssh # prefer libssh2

# our sysutils/e2fsprogs is too old (<2.17)
CONFIGURE_ARGS +=	--without-blkid

DEBUG_PACKAGES=		${BUILD_PACKAGES}

FAKE_FLAGS=		confdir=${PREFIX}/share/examples/libvirt \
			sysconfdir=${PREFIX}/share/examples/libvirt

# OpenBSD can't act as a virtualization host, so no need for libvirtd.
# If support is added, subtitute /var/lib/{xen,virt,libvirt,...} with /var/db.
# nwfilters are only used by libvirtd, which is (currently) disabled on OpenBSD.
CONFIGURE_ARGS +=	--without-libvirtd
FAKE_FLAGS +=		NWFILTER_DIR=${TMPDIR} \
			FILTERS=""
post-install:
	rm -rf ${WRKINST}/var/lib

.include <bsd.port.mk>
