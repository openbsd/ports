# $OpenBSD: Makefile,v 1.164 2020/06/01 14:38:18 ajacoutot Exp $

COMMENT=		GNU Transport Layer Security library

V=			3.6.13
DISTNAME=		gnutls-${V}
EXTRACT_SUFX=		.tar.xz
REVISION=		0

# https://gitlab.com/gnutls/gnutls/-/issues/1008
# _gnutls_pkcs11_verify_crt_status: check validity against system cert
# x509: trigger fallback verification path when cert is expired
# tests: add test case for certificate chain superseding
MASTER_SITES0=		https://gitlab.com/gnutls/gnutls/-/merge_requests/
PATCHFILES=		1271.patch:0
PATCH_DIST_STRIP=	-p1

CATEGORIES=		security

SHARED_LIBS +=  gnutls               46.5     # 57.0
SHARED_LIBS +=  gnutlsxx             29.1     # 29.0
SHARED_LIBS +=  gnutls-dane          0.0      # 4.1

HOMEPAGE=		http://www.gnutls.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+ - GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto event ffi gmp hogweed iconv
WANTLIB += idn2 intl m nettle p11-kit ssl tasn1 unbound unistring

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://www.gnupg.org/ftp/gcrypt/gnutls/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/ \
			ftp://ftp.gnutls.org/gcrypt/gnutls/v${V:C/^([0-9]+\.[0-9]+).*/\1/}/

# needed for tests
BUILD_DEPENDS=		devel/cmocka

LIB_DEPENDS=		converters/libunistring \
			devel/libidn2 \
			net/libunbound \
			security/libtasn1 \
			security/libnettle \
			security/p11-kit

USE_GMAKE=		Yes

# regression tests need this
PORTHOME=		${WRKDIR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-guile \
			--disable-ssl3-support \
			--disable-valgrind-tests \
			--with-default-trust-store-file=/etc/ssl/cert.pem \
			--with-unbound-root-key-file=/var/unbound/db/root.key

# requires security/trousers: not committed (aja@), needs kernel support
# for tpm(4): http://bsssd.sourceforge.net/
CONFIGURE_ARGS +=	--without-tpm

# prevents dependency on devel/autogen
CONFIGURE_ARGS +=	--enable-local-libopts
CONFIGURE_ARGS +=	ac_cv_prog_autogen=

LDFLAGS=		-L${LOCALBASE}/lib
.if ${MACHINE_ARCH:Mi386}
LDFLAGS+=		-Wl,-z,notext
.endif

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
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
