COMMENT =	libtls library used with OpenSSL 3.1 for testing

V =		3.8.1
DISTNAME =	libretls-$V
PKGNAME =	libretls-$V

SHARED_LIBS =	tls 1.0

CATEGORIES =	security net

HOMEPAGE =	https://git.causal.agency/libretls/about/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		lib/eopenssl31/crypto lib/eopenssl31/ssl

SITES =			https://causal.agency/libretls/

# OpenSSL used because this port is specifically intended for testing
# portable versions of OpenBSD daemons against OpenSSL+libretls
LIB_DEPENDS =		security/openssl/3.1

USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu old
CONFIGURE_ARGS =	--libdir=${LOCALBASE}/lib/eopenssl31 \
			--includedir=${LOCALBASE}/include/eopenssl31 \
			--mandir=${LOCALBASE}/lib/eopenssl31/man
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl31" \
			LDFLAGS="-L${LOCALBASE}/lib/eopenssl31 -Wl,-rpath,${LOCALBASE}/lib/eopenssl31"
SEPARATE_BUILD =	Yes

# move pkgconfig files here, the build infrastructure is not layed out for that
post-install:
	mv ${PREFIX}/lib/eopenssl31/pkgconfig/libtls.pc \
	    ${PREFIX}/lib/pkgconfig/libetls.pc
	rmdir ${PREFIX}/lib/eopenssl31/pkgconfig

.include <bsd.port.mk>
