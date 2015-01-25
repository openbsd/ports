# $OpenBSD: Makefile,v 1.14 2015/01/25 09:36:55 ajacoutot Exp $

# Note: use 'ulimit -n 1024' for regress tests

SHARED_ONLY =		Yes

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-4.0.5
REVISION =		0

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

# XXX libsodium: https://github.com/jedisct1/libsodium/pull/104
CFLAGS +=		-Wno-long-long

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-libsodium=${LOCALBASE}

.include <bsd.port.mk>
