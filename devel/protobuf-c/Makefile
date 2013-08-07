# $OpenBSD: Makefile,v 1.5 2013/08/07 21:31:40 naddy Exp $

COMMENT =		c protocol buffers

DISTNAME =		protobuf-c-0.15
REVISION =		0

SHARED_LIBS =		protobuf-c 0.0	# 0.0

CATEGORIES =		devel

HOMEPAGE =		https://protobuf-c.googlecode.com/

MASTER_SITES =		${HOMEPAGE}/files/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m protobuf protoc pthread stdc++ z

LIB_DEPENDS =		devel/protobuf

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"                                     

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
