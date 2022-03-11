COMMENT =	STUN server implementing RFCs 5389, 5769, and 5780

VERSION =	1.2.16
DISTNAME =	stunserver-${VERSION}
PKGNAME =	stuntman-${VERSION}
CATEGORIES =	telephony net
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://www.stunprotocol.org/

MASTER_SITES =	${HOMEPAGE}

# Apache 2.0 license
PERMIT_PACKAGE=	Yes

WANTLIB +=	c crypto m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/boost

MAKE_FLAGS =	BOOST_INCLUDE='-I${LOCALBASE}/include' \
		FLAVOR_FLAGS='${CXXFLAGS} -Wno-unknown-pragmas -DHAVE_ARC4RANDOM' \
		CXX="${CXX}"

USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/stunserver

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} stunserver stunclient ${PREFIX}/sbin
	cd ${WRKSRC}/resources/; ${INSTALL_MAN} stunclient.1 stunserver.1 \
	    ${PREFIX}/man/man1

do-test:
	${WRKSRC}/stuntestcode

.include <bsd.port.mk>
