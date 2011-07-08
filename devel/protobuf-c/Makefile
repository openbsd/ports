# $OpenBSD: Makefile,v 1.1.1.1 2011/07/08 08:58:02 dcoppa Exp $

COMMENT =		c protocol buffers

DISTNAME =		protobuf-c-0.15

SHARED_LIBS =		protobuf-c 0.0	# 0.0

CATEGORIES =		devel

HOMEPAGE =		http://protobuf-c.googlecode.com/

MASTER_SITES =		${HOMEPAGE}/files/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m protobuf protoc pthread stdc++ z

LIB_DEPENDS =		devel/protobuf

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"                                     

SEPARATE_BUILD =	concurrent

.include <bsd.port.mk>
