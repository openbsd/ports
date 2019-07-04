# $OpenBSD: Makefile,v 1.5 2019/07/04 12:07:23 jca Exp $

COMMENT =	static source code analyzer for Qt5-based C++

GH_ACCOUNT =	KDE
GH_PROJECT =	clazy
GH_TAGNAME =	v1.5

CATEGORIES =	lang devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/llvm
RUN_DEPENDS =		devel/llvm

CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR="${PREFIX}/man/man1" \
			-DLLVM_ROOT="${LOCALBASE}"

NO_TEST =		Yes

.include <bsd.port.mk>
