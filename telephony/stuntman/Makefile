# $OpenBSD: Makefile,v 1.5 2014/07/12 11:25:00 sthen Exp $

COMMENT =	STUN server implementing RFCs 5389, 5769, and 5780
NOT_FOR_ARCHS = hppa mips64 mips64el sparc64 # atomic ops

VERSION =	1.2.5
REVISION =	0
DISTNAME =	stunserver-${VERSION}
PKGNAME =	stuntman-${VERSION}
CATEGORIES =	telephony net
EXTRACT_SUFX =	.tgz

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =	http://www.stunprotocol.org/

MASTER_SITES =	${HOMEPAGE}

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c crypto m pthread stdc++

BUILD_DEPENDS =	devel/boost

MAKE_FLAGS =	BOOST_INCLUDE='-I${LOCALBASE}/include' \
		FLAVOR_FLAGS='${CXXFLAGS} -Wno-unknown-pragmas -DHAVE_ARC4RANDOM'

USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/stunserver

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} stunserver stunclient ${PREFIX}/sbin
	cd ${WRKSRC}/resources/; ${INSTALL_MAN} stunclient.1 stunserver.1 \
	    ${PREFIX}/man/man1

do-test:
	${WRKSRC}/stuntestcode

.include <bsd.port.mk>
