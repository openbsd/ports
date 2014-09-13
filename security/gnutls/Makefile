# $OpenBSD: Makefile,v 1.104 2014/09/13 16:36:54 ajacoutot Exp $
# rfc2818_hostname.c:107: error: storage size of 'ipv6' isn't known

COMMENT=	GNU Transport Layer Security library

V=		3.2.17
DISTNAME=	gnutls-${V}
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	security

SHARED_LIBS +=  gnutls               41.4     # 58.8
SHARED_LIBS +=  gnutlsxx             29.1     # 29.0
SHARED_LIBS +=  gnutls-xssl          0.0      # 0.0
SHARED_LIBS +=  gnutls-openssl       27.2     # 27.2

HOMEPAGE=	http://www.gnutls.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+ - GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp hogweed m nettle p11-kit pthread stdc++ tasn1
WANTLIB += z

MASTER_SITES=	ftp://ftp.gnutls.org/gcrypt/gnutls/v${V:R}/ \
		http://mirrors.dotsrc.org/gcrypt/gnutls/v${V:R}/

MODULES=	devel/gettext

LIB_DEPENDS=	security/libtasn1 \
		security/libnettle \
		security/p11-kit

USE_GMAKE=	Yes

# regression tests need this
PORTHOME=	${WRKDIR}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-guile \
		--disable-valgrind-tests \
		--with-default-trust-store-file=/etc/ssl/cert.pem

# OpenBSD's unbound does not provide libdane
CONFIGURE_ARGS += --disable-libdane

# requires security/trousers: not committed (aja@), needs kernel support
# for tpm(4): http://bsssd.sourceforge.net/
CONFIGURE_ARGS += --without-tpm

# prevents dependency on devel/autogen
CONFIGURE_ARGS+=--enable-local-libopts

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
