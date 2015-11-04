# $OpenBSD: Makefile,v 1.19 2015/11/04 09:33:18 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-4.1.3
REVISION =		0

SHARED_LIBS +=  zmq                  4.1      # 4.0

CATEGORIES =		net
HOMEPAGE =		http://zeromq.org/

MAINTAINER =		Rodrigo Mosconi <openbsd@mosconi.mat.br>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread sodium stdc++

MASTER_SITES =		http://download.zeromq.org/

LIB_DEPENDS =		security/libsodium

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-libsodium=${LOCALBASE}

# XXX libsodium: https://github.com/jedisct1/libsodium/pull/104
CONFIGURE_ENV =		CXXFLAGS="-Wno-long-long ${CXXFLAGS}"

# test_system needs to be able to create at least 496 sockets
do-test:
	cd ${WRKSRC} && ulimit -n 1024 && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
