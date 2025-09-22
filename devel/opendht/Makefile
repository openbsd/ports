COMMENT =	lightweight C++17 Distributed Hash Table implementation

V =		3.4.0
DISTNAME =	opendht-${V}

GH_ACCOUNT =	savoirfairelinux
GH_PROJECT =	opendht
GH_TAGNAME =	v${V}

SHARED_LIBS  =	opendht-c	0.0 # 0.0
SHARED_LIBS +=	opendht		0.0 # 0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/savoirfairelinux/opendht

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

WANTLIB =		${COMPILER_LIBCXX} c m curses readline \
			argon2 fmt gnutls jsoncpp nettle

BUILD_DEPENDS =		devel/asio \
			devel/cppunit \
			devel/msgpack-cxx

LIB_DEPENDS =		security/argon2 \
			devel/fmt \
			security/gnutls \
			security/libnettle \
			devel/jsoncpp \

CONFIGURE_STYLE =	cmake

.include <bsd.port.mk>
