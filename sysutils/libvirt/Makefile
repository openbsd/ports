# $OpenBSD: Makefile,v 1.7 2012/11/27 16:08:54 jasper Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-1.0.0
CATEGORIES=		sysutils devel

SHARED_LIBS +=  virt-qemu                 0.1 # 10.2
SHARED_LIBS +=  virt                      0.1 # 10.2

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		${HOMEPAGE}/sources/ \
			${HOMEPAGE}/sources/stable_updates/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		devel/gettext \
			lang/python

WANTLIB += avahi-client avahi-common c crypto curl dbus-1 gcrypt
WANTLIB += gmp gnutls gpg-error hogweed idn m ncurses nettle p11-kit
WANTLIB += pthread readline ssh2 ssl tasn1 util xml2 z

BUILD_DEPENDS=		textproc/docbook

LIB_DEPENDS=		net/avahi \
			net/curl \
			security/gnutls \
			security/libgcrypt \
			security/libssh2 \
			textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-avahi \
			--with-libssh2 \
			--with-python \
			--without-yajl \
			--without-netcf \
			--without-network
# OpenBSD can't act as a virtualization host, so no need for libvirtd.
# If support is added, subtitute /var/lib/{xen,virt,libvirt,...} with /var/db
CONFIGURE_ARGS+=	--without-libvirtd

MODPY_ADJ_FILES=        python/tests/basic.py \
                        python/tests/create.py \
                        python/tests/error.py \
                        python/tests/node.py \
                        python/tests/uuid.py

FAKE_FLAGS=		confdir=${PREFIX}/share/examples/libvirt \
			DOCS_DIR=${PREFIX}/share/doc/libvirt/python \
			EXAMPLE_DIR=${PREFIX}/share/doc/libvirt/python/examples \
			HTML_DIR=${PREFIX}/share/doc/libvirt/html

# nwfilters are only used by libvirtd, which is (currently) disabled on OpenBSD
FAKE_FLAGS+=		NWFILTER_DIR=${TMPDIR} \
			FILTERS=""

.include <bsd.port.mk>
