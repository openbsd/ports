COMMENT =	advanced forensic format library and tools

VERSION =	3.7.22
GH_ACCOUNT =	sshock
GH_PROJECT =	AFFLIBv3
GH_TAGNAME =	v${VERSION}
PKGNAME =	afflib3-${VERSION}

CATEGORIES =	sysutils
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS +=	afflib                    0.0 # 0.0

# 4-clause BSD and Public Domain
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

WANTLIB +=	${COMPILER_LIBCXX} aio_compat c crypto curses expat
WANTLIB +=	m readline ssl z curl nghttp2 nghttp3 ngtcp2
WANTLIB +=	ngtcp2_crypto_libressl
LIB_DEPENDS +=	devel/libaio_compat \
		net/curl

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION = 	2.69
AUTOMAKE_VERSION = 	1.16


CONFIGURE_ENV +=	CXXFLAGS="${CXXFLAGS} -Disnumber=isdigit" \
			LDFLAGS="-L${LOCALBASE}/lib -laio_compat"


.include <bsd.port.mk>
