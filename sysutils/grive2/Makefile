COMMENT =	third-party client for Google Drive

GH_ACCOUNT =	vitalif
GH_PROJECT =	grive2
GH_COMMIT =	548ea362f319cd1f7fcbad0344fde8449fa14255

DISTNAME =	grive2-0.5.1

CATEGORIES =	sysutils

HOMEPAGE =	http://yourcmc.ru/wiki/Grive2

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_filesystem-mt boost_program_options-mt
WANTLIB += boost_regex-mt boost_system-mt c curl gcrypt gpg-error
WANTLIB += iberty m yajl

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

CXXFLAGS +=	-I${LOCALBASE}/include

LIB_DEPENDS =	devel/boost \
		devel/libyajl \
		net/curl \
		security/libgcrypt

.include <bsd.port.mk>
