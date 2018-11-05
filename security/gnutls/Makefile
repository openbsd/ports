# $OpenBSD: Makefile,v 1.149 2018/11/05 21:29:50 naddy Exp $

COMMENT=		GNU Transport Layer Security library

V=			3.5.19
DISTNAME=		gnutls-${V}
EXTRACT_SUFX=		.tar.xz
REVISION=		1

CATEGORIES=		security

SHARED_LIBS +=  gnutls               44.1     # 44.11
SHARED_LIBS +=  gnutlsxx             29.1     # 29.0

HOMEPAGE=		http://www.gnutls.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+ - GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gmp hogweed iconv idn2 intl m nettle p11-kit pthread
WANTLIB += tasn1 unistring z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://www.gnupg.org/ftp/gcrypt/gnutls/v${V:R}/ \
			ftp://ftp.gnutls.org/gcrypt/gnutls/v${V:R}/

# needed for tests
BUILD_DEPENDS=		devel/cmocka

LIB_DEPENDS=		converters/libunistring \
			devel/libidn2 \
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

# OpenBSD's unbound does not provide libdane
CONFIGURE_ARGS +=	--disable-libdane

# requires security/trousers: not committed (aja@), needs kernel support
# for tpm(4): http://bsssd.sourceforge.net/
CONFIGURE_ARGS +=	--without-tpm

# prevents dependency on devel/autogen
CONFIGURE_ARGS +=	--enable-local-libopts

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

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

# gcc 4.9: match visibility of max_align_t between CC and CXX
.if ${CHOSEN_COMPILER} == "ports-gcc"
CFLAGS += -std=gnu11
.endif
