# $OpenBSD: Makefile,v 1.57 2012/08/19 13:31:39 ajacoutot Exp $

COMMENT=	GNU Transport Layer Security library

DISTNAME=	gnutls-3.0.22
EXTRACT_SUFX=	.tar.xz
REVISION=	1

CATEGORIES=	security

SHARED_LIBS +=  gnutls               38.0     # 38.0
SHARED_LIBS +=  gnutlsxx             28.0     # 28.0
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

MASTER_SITES=	ftp://ftp.gnutls.org/pub/gnutls/

MODULES=	devel/gettext

LIB_DEPENDS=	devel/libidn \
		security/libtasn1 \
		security/libnettle>=2.2 \
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

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

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
