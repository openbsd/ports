# $OpenBSD: Makefile,v 1.4 2022/02/28 12:48:04 sthen Exp $

COMMENT =	libtls library used with OpenSSL 1.1 for testing

V =		3.5.0
DISTNAME =	libretls-$V
PKGNAME =	libretls-$V

SHARED_LIBS =	tls 0.1

CATEGORIES =	security net

HOMEPAGE =	https://git.causal.agency/libretls/about/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		c lib/eopenssl11/crypto lib/eopenssl11/ssl

MASTER_SITES =		https://causal.agency/libretls/

LIB_DEPENDS =		security/openssl/1.1

USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu old
CONFIGURE_ARGS =	--libdir=${LOCALBASE}/lib/eopenssl11 \
			--includedir=${LOCALBASE}/include/eopenssl11 \
			--mandir=${LOCALBASE}/lib/eopenssl11/man
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/eopenssl11" \
			LDFLAGS="-L${LOCALBASE}/lib/eopenssl11 -Wl,-rpath,${LOCALBASE}/lib/eopenssl11"
SEPARATE_BUILD =	Yes

# move pkgconfig files here, the build infrastructure is not layed out for that
post-install:
	mv ${PREFIX}/lib/eopenssl11/pkgconfig/libtls.pc \
	    ${PREFIX}/lib/pkgconfig/libetls.pc
	rmdir ${PREFIX}/lib/eopenssl11/pkgconfig

.include <bsd.port.mk>
