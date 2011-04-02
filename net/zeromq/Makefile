# $OpenBSD: Makefile,v 1.2 2011/04/02 21:33:55 jeremy Exp $

COMMENT =		open source message queue optimised for performance

DISTNAME =		zeromq-2.0.10
SHARED_LIBS +=		zmq                       0.0 # 0.0

CATEGORIES =		net
HOMEPAGE =		http://zeromq.org	
MAINTAINER =		Benoit Chesneau <benoitc@e-engura.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB=		c pthread stdc++ ssl crypto m

MASTER_SITES =		http://download.zeromq.org/ \
			http://download.zeromq.org/historic/

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

.include <bsd.port.mk>
