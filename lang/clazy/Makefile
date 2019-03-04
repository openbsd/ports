# $OpenBSD: Makefile,v 1.4 2019/03/04 01:09:39 jsg Exp $

COMMENT =	static source code analyzer for Qt5-based C++

GH_ACCOUNT =	KDE
GH_PROJECT =	clazy
GH_TAGNAME =	v1.4

CATEGORIES =	lang devel

SHARED_LIBS +=  clazylib                  0.1 # 0.1

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/llvm
RUN_DEPENDS =		devel/llvm

CONFIGURE_ARGS =	-DCLAZY_BUILD_UTILS_LIB:Bool=ON \
			-DMAN_INSTALL_DIR="${PREFIX}/man/man1" \
			-DLLVM_ROOT="${LOCALBASE}"

NO_TEST =		Yes

.include <bsd.port.mk>
