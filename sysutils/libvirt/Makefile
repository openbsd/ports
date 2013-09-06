# $OpenBSD: Makefile,v 1.16 2013/09/06 16:28:48 ajacoutot Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-1.0.5.4
CATEGORIES=		sysutils devel
REVISION=		0

SHARED_LIBS +=  virt-qemu                 0.2 # 1000.5
SHARED_LIBS +=  virt                      0.2 # 1000.5
SHARED_LIBS +=	virt-lxc		  0.0 # 1000.5

HOMEPAGE=		http://libvirt.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES=		${HOMEPAGE}/sources/ \
			${HOMEPAGE}/sources/stable_updates/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		devel/gettext \
			lang/python

WANTLIB += avahi-client avahi-common c crypto curl dbus-1 gcrypt
WANTLIB += gnutls gpg-error hogweed idn m ncurses nettle p11-kit
WANTLIB += pthread readline ssh2 ssl tasn1 util xml2 z ffi gmp

BUILD_DEPENDS=		textproc/docbook

LIB_DEPENDS=		net/avahi \
			net/curl \
			security/gnutls \
			security/libgcrypt \
			security/libssh2 \
			textproc/libxml

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-avahi \
			--with-ssh2 \
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

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
