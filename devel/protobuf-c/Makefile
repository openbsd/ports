# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:25 espie Exp $

COMMENT =		c protocol buffers

DISTNAME =		protobuf-c-0.15

SHARED_LIBS =		protobuf-c 0.0	# 0.0

CATEGORIES =		devel

HOMEPAGE =		http://protobuf-c.googlecode.com/

MASTER_SITES =		${HOMEPAGE}/files/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m protobuf protoc pthread stdc++ z

LIB_DEPENDS =		devel/protobuf

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"                                     

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
