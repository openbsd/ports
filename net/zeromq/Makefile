# $OpenBSD: Makefile,v 1.30 2018/10/24 14:28:09 sthen Exp $

COMMENT =		open source message queue optimised for performance

V =			4.2.5
DISTNAME =		zeromq-${V}
REVISION =		0

SHARED_LIBS +=  zmq                  4.2      # 6.3

CATEGORIES =		net
HOMEPAGE =		http://zeromq.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread sodium ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/zeromq/libzmq/releases/download/v$V/

LIB_DEPENDS =		security/libsodium

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-Werror
# XXX: verify tweetnacl (the default) uses proper randomness before using it
CONFIGURE_ARGS +=	--with-libsodium

# XXX libsodium: https://github.com/jedisct1/libsodium/pull/104
CONFIGURE_ENV =		CXXFLAGS="-Wno-long-long ${CXXFLAGS}"

# test_system needs to be able to create at least 496 sockets
do-test:
	cd ${WRKSRC} && ulimit -n 1024 && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
