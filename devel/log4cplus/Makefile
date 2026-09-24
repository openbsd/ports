COMMENT=	logging API for C++

V=		2_2_0_1
DISTNAME=	log4cplus-${V:S/_/./g}

SITES=		https://github.com/log4cplus/log4cplus/releases/download/REL_$V/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  log4cplus             4.0

CATEGORIES=	devel
HOMEPAGE=	https://github.com/log4cplus/log4cplus/wiki

# Apache License 2.0 + BSD style
PERMIT_PACKAGE=	Yes

WANTLIB += c m pthread ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc

CXXFLAGS_base-clang =	-std=c++14

MODULES=	devel/cmake

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
