# $OpenBSD: Makefile,v 1.8 2020/11/28 09:30:46 rsadowski Exp $

COMMENT =	static source code analyzer for Qt5-based C++

GH_ACCOUNT =	KDE
GH_PROJECT =	clazy
GH_TAGNAME =	v1.8
REVISION =	0

CATEGORIES =	lang devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c clang-cpp m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/llvm
RUN_DEPENDS =		devel/llvm

CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR="${PREFIX}/man/man1" \
			-DLLVM_ROOT="${LOCALBASE}"

NO_TEST =		Yes

.include <bsd.port.mk>
