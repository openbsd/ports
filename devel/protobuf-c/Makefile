# $OpenBSD: Makefile,v 1.7 2014/09/04 12:32:45 dcoppa Exp $

COMMENT =		c protocol buffers

V =			1.0.1
GH_ACCOUNT =		protobuf-c
GH_PROJECT =		protobuf-c
GH_TAGNAME =		v${V}
GH_COMMIT =		ce90c3be88e7e2efd8f449c4a29f72b269bf3e63
DISTNAME =		${GH_PROJECT}-${V}

SHARED_LIBS =		protobuf-c 1.0	# 1.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protobuf-c/protobuf-c/wiki

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m protobuf protoc pthread stdc++ z

BUILD_DEPENDS =		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =		devel/protobuf

AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"                                     

USE_GMAKE =		Yes

SEPARATE_BUILD =	Yes

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

.include <bsd.port.mk>
