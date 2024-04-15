COMMENT =	libtls library used with OpenSSL 3.2 for testing

V =		3.8.1
DISTNAME =	libretls-$V
PKGNAME =	libretls-$V
REVISION =	1

SHARED_LIBS =	tls 1.0

CATEGORIES =	security net

HOMEPAGE =	https://git.causal.agency/libretls/about/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		lib/eopenssl32/crypto lib/eopenssl32/ssl

SITES =			https://causal.agency/libretls/

# OpenSSL used because this port is specifically intended for testing
# portable versions of OpenBSD daemons against OpenSSL+libretls
LIB_DEPENDS =		security/openssl/3.2

USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu old
CONFIGURE_ARGS =	--libdir=${LOCALBASE}/lib/eopenssl32 \
			--includedir=${LOCALBASE}/include/eopenssl32 \
			--mandir=${LOCALBASE}/lib/eopenssl32/man
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl32" \
			LDFLAGS="-L${LOCALBASE}/lib/eopenssl32 -Wl,-rpath,${LOCALBASE}/lib/eopenssl32"

CFLAGS +=		-Wno-deprecated-declarations

SEPARATE_BUILD =	Yes

# move pkgconfig files here, the build infrastructure is not layed out for that
post-install:
	mv ${PREFIX}/lib/eopenssl32/pkgconfig/libtls.pc \
	    ${PREFIX}/lib/pkgconfig/libetls.pc
	rmdir ${PREFIX}/lib/eopenssl32/pkgconfig

.include <bsd.port.mk>
