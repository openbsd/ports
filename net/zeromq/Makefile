# $OpenBSD: Makefile,v 1.16 2015/05/13 14:54:14 jca Exp $

# Note: use 'ulimit -n 1024' for regress tests

SHARED_ONLY =		Yes

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-4.0.5
REVISION =		2

SHARED_LIBS +=  zmq                  4.0      # 4.0

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

.include <bsd.port.mk>
