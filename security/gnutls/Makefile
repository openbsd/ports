# $OpenBSD: Makefile,v 1.60 2012/09/05 07:15:50 ajacoutot Exp $

# XXX check why our getopt_long(3) fails the configure test
# + rm patch-gl_unistd_in_h

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-3.1.1
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	security

SHARED_LIBS +=  gnutls               39.0     # 40.0
SHARED_LIBS +=  gnutlsxx             29.0     # 29.0
SHARED_LIBS +=  gnutls-openssl       27.2     # 27.2

HOMEPAGE=	http://www.gnutls.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@bsdfrog.org>

# LGPLv3 - GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gmp hogweed idn m nettle p11-kit pthread stdc++ tasn1
WANTLIB += z

MASTER_SITES=	http://ftp.gnu.org/gnu/gnutls/ \
		ftp://ftp.gnu.org/pub/gnu/gnutls/

MODULES=	devel/gettext

LIB_DEPENDS=	devel/libidn \
		security/libtasn1 \
		security/libnettle>=2.5 \
		security/p11-kit

USE_LIBTOOL=	Yes

# regression tests need this
PORTHOME=	${WRKDIR}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-guile \
		--disable-valgrind-tests \
		--disable-hardware-acceleration \
		--with-libtasn1-prefix=${LOCALBASE} \
		--with-packager="OpenBSD Ports"

# requires security/trousers: not committed, needs kernel support for tpm(4):
# http://bsssd.sourceforge.net/
CONFIGURE_ARGS += --without-tpm

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
		${PREFIX}/share/examples/gnutls
	# needed by at least:
	# devel/libvmime, security/prelude/manager, textproc/iksemel
	${INSTALL} -m 555 ${FILESDIR}/libgnutls-config ${PREFIX}/bin

.include <bsd.port.mk>
