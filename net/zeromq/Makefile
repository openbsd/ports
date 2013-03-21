# $OpenBSD: Makefile,v 1.10 2013/03/21 08:46:35 ajacoutot Exp $

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-3.2.2

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

# Note: use ulimit -n 1024 for regress tests

.include <bsd.port.mk>
