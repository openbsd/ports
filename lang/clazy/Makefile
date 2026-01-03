BROKEN-sparc64 = Uses clang-cpp libraries and fails to link with either ports-gcc or ports-clang

COMMENT =	static source code analyzer for Qt-based C++

V =		1.16
PKGNAME =	clazy-${V}
DISTNAME =	clazy-v${V}

CATEGORIES =	lang devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang-cpp
WANTLIB += llvm${MODCLANG_VERSION}/lib/LLVM

SITES =			${SITE_KDE:=stable/clazy/${V}/src/}
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

MODULES =		lang/clang devel/cmake

MODCLANG_VERSION =		19
MODCLANG_COMPILER_LINKS = 	No
MODCLANG_RUNDEP =		Yes

BUILD_DEPENDS =		devel/clang-tools-extra>=21.1.8p0

LIB_DEPENDS =		${MODCLANG_LIB_DEPENDS} \

CONFIGURE_ARGS =	-DLLVM_ROOT="${LOCALBASE}/llvm${MODCLANG_VERSION}"

CXXFLAGS +=              -I${LOCALBASE}/include

NO_TEST =		Yes

.include <bsd.port.mk>
