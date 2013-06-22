# $OpenBSD: Makefile,v 1.11 2013/06/22 07:45:14 jasper Exp $

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-3.2.3

SHARED_ONLY =		Yes
SHARED_LIBS +=	zmq                  2.0      # 3.0

CATEGORIES =		net
HOMEPAGE =		http://zeromq.org/

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		pthread stdc++ ssl crypto m

MASTER_SITES =		http://download.zeromq.org/

USE_GMAKE =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

# test_connect_delay.cpp:260:2: error: no newline at end of file
post-extract:
	echo "" >> ${WRKSRC}/tests/test_connect_delay.cpp

# Note: use ulimit -n 1024 for regress tests

.include <bsd.port.mk>
