# $OpenBSD: Makefile,v 1.6 2012/04/28 10:05:30 rpointel Exp $

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-2.2.0

SHARED_ONLY =		Yes
SHARED_LIBS +=		zmq                       1.0 # 1.0

CATEGORIES =		net
HOMEPAGE =		http://zeromq.org	
MAINTAINER =		Benoit Chesneau <benoitc@e-engura.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB=		pthread stdc++ ssl crypto m

MASTER_SITES =		http://download.zeromq.org/ \
			http://download.zeromq.org/historic/

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

# Note: use ulimit -n 1024 for regress tests

.include <bsd.port.mk>
