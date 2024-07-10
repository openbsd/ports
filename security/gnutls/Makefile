COMMENT=		GNU Transport Layer Security library

V=			3.8.6
DISTNAME=		gnutls-${V}
EXTRACT_SUFX=		.tar.xz

CATEGORIES=		security

SHARED_LIBS +=  gnutls              47.10     # 70.0
SHARED_LIBS +=  gnutlsxx             30.2     # 30.0
SHARED_LIBS +=  gnutls-dane          1.1      # 4.1

HOMEPAGE=		http://www.gnutls.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+ - GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto event ffi gmp hogweed iconv
WANTLIB += idn2 intl m nettle p11-kit ssl tasn1 unbound unistring

COMPILER =		base-clang ports-gcc base-gcc

SITES=			https://www.gnupg.org/ftp/gcrypt/gnutls/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/ \
			ftp://ftp.gnutls.org/gcrypt/gnutls/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/

# needed for tests
BUILD_DEPENDS=		devel/cmocka

LIB_DEPENDS=		converters/libunistring \
			devel/gettext,-runtime \
			devel/libidn2 \
			net/libunbound \
			security/libtasn1 \
			security/libnettle \
			security/p11-kit

# dlopen(); see patch-lib_compress_c
WANTLIB += brotlidec brotlienc z zstd
BUILD_DEPENDS +=	archivers/brotli \
			archivers/zstd
RUN_DEPENDS +=		archivers/brotli \
			archivers/zstd

USE_GMAKE=		Yes

# regression tests need this
PORTHOME=		${WRKDIR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-ssl3-support \
			--disable-valgrind-tests \
			--with-default-trust-store-file=/etc/ssl/cert.pem \
			--with-unbound-root-key-file=/var/unbound/db/root.key

# requires security/trousers: not committed (aja@), needs kernel support
# for tpm(4): https://bsssd.sourceforge.net/
CONFIGURE_ARGS +=	--without-tpm

.if ${MACHINE_ARCH:Maarch64}
CCASFLAGS+=		-mmark-bti-property
.endif

LDFLAGS=		-L${LOCALBASE}/lib
.if ${MACHINE_ARCH:Mi386}
LDFLAGS+=		-Wl,-z,notext
.endif

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			CCASFLAGS="${CCASFLAGS}" \
			LDFLAGS="${LDFLAGS}"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnutls
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnutls
	${INSTALL_DATA} ${WRKSRC}/doc/examples/*.c \
		${PREFIX}/share/examples/gnutls

# warning: implicit declaration of function 'kill'
# error: 'SIGTERM' undeclared (first use in this function)
pre-test:
	perl -i -pe 's,#include <stdlib.h>,$$&\n#include <signal.h>,' \
		${WRKSRC}/tests/*.c

.include <bsd.port.mk>
