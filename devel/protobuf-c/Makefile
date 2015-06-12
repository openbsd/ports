# $OpenBSD: Makefile,v 1.9 2015/06/12 10:59:46 dcoppa Exp $

COMMENT =		c protocol buffers

V =			1.0.2
GH_ACCOUNT =		protobuf-c
GH_PROJECT =		protobuf-c
GH_TAGNAME =		v${V}
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
