# $OpenBSD $

COMMENT =	minimalistic command line pastebin
PKGNAME =	${DISTNAME:L}
REVISION =	0
CATEGORIES =	www net

GH_ACCOUNT =	PurritoBin
GH_PROJECT =	PurritoBin
GH_TAGNAME =	0.6.7

HOMEPAGE =	https://bsd.ac/
MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	${COMPILER_LIBCXX} c lmdb usockets

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

CXXFLAGS +=	-I${LOCALBASE}/include

CONFIGURE_ENV =	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# ssl tests fail
CONFIGURE_ARGS= -Denable_testing=true \
		-Dtest_shuf=gshuf \
		-Dtest_seq=gseq

BUILD_DEPENDS =	databases/lmdbxx \
		net/curl \
		sysutils/coreutils \
		www/uwebsockets

LIB_DEPENDS =	databases/lmdb \
		net/usockets

.include <bsd.port.mk>
