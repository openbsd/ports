COMMENT =	lightweight C++17 Distributed Hash Table implementation

GH_ACCOUNT =	savoirfairelinux
GH_PROJECT =	opendht
GH_TAGNAME =	v3.4.0
REVISION =	0

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
			security/nettle \
			devel/jsoncpp

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DOPENDHT_DOCUMENTATION=off

.include <bsd.port.mk>
