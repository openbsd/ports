COMMENT=	logging API for C++

# XXX tried updating to 2.0.4 and 2.1.0 but net/kea doesn't exit properly
# (no config needed; just install kea and start/stop). same with kea 2.5.3.
V=		1_2_2
DISTNAME=	log4cplus-${V:S/_/./g}

REVISION=	1

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

.include <bsd.port.mk>
