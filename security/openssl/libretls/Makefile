COMMENT =	libtls library used with OpenSSL 3.2 for testing

V =		3.8.1
DISTNAME =	libretls-$V
PKGNAME =	libretls-$V
REVISION =	2

EOPENSSL_V =	eopenssl33
LDEP_V =	3.3

SUBST_VARS +=	EOPENSSL_V

SHARED_LIBS =	tls 1.0

CATEGORIES =	security net

HOMEPAGE =	https://git.causal.agency/libretls/about/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =		lib/${EOPENSSL_V}/crypto lib/${EOPENSSL_V}/ssl

SITES =			https://causal.agency/libretls/

# OpenSSL used because this port is specifically intended for testing
# portable versions of OpenBSD daemons against OpenSSL+libretls
LIB_DEPENDS =		security/openssl/${LDEP_V}

USE_LIBTOOL =		gnu
CONFIGURE_STYLE =	gnu old
CONFIGURE_ARGS =	--libdir=${LOCALBASE}/lib/${EOPENSSL_V} \
			--includedir=${LOCALBASE}/include/${EOPENSSL_V} \
			--mandir=${LOCALBASE}/lib/${EOPENSSL_V}/man
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -I${LOCALBASE}/include/${EOPENSSL_V}" \
			LDFLAGS="-L${LOCALBASE}/lib/${EOPENSSL_V} -Wl,-rpath,${LOCALBASE}/lib/${EOPENSSL_V}"

CFLAGS +=		-Wno-deprecated-declarations

SEPARATE_BUILD =	Yes

# move pkgconfig files here, the build infrastructure is not layed out for that
post-install:
	mv ${PREFIX}/lib/${EOPENSSL_V}/pkgconfig/libtls.pc \
	    ${PREFIX}/lib/pkgconfig/libetls.pc
	rmdir ${PREFIX}/lib/${EOPENSSL_V}/pkgconfig

.include <bsd.port.mk>
