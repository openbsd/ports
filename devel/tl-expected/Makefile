# $OpenBSD: Makefile,v 1.1.1.1 2021/12/17 17:17:32 kn Exp $

COMMENT =	c++11/14/17 std::expected with functional-style extensions

GH_ACCOUNT =		TartanLlama
GH_PROJECT =		expected
GH_TAGNAME =		v1.0.0
PKGNAME =		tl-${DISTNAME}
CATEGORIES =		devel

# cmake file for build and install;  no release or tags, use latest master
ADD_TL_COMMIT =		284c6a3f0f61823cc3871b0f193e8df699e2c4ce
MASTER_SITES0 =	https://raw.githubusercontent.com/${GH_ACCOUNT}/tl-cmake/${ADD_TL_COMMIT}/
DISTFILES =		${GH_DISTFILE} \
			add-tl.cmake:0
EXTRACT_ONLY =		${GH_DISTFILE}

HOMEPAGE =		https://tl.tartanllama.xyz

# CC0 1.0 Universal (public domain)
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++11 or higher
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake

# avoid network and point at prefetched SUPDISTFILES
CONFIGURE_ARGS +=	-DFETCHCONTENT_FULLY_DISCONNECTED=ON \
			-DFETCHCONTENT_SOURCE_DIR_TL_CMAKE=${FULLDISTDIR}

# avoid building anything for now, enable later
CONFIGURE_ARGS +=	-DEXPECTED_ENABLE_TESTS=OFF

# just header files
PKG_ARCH =		*
# with tests disabled and no docs or examples:
# "ninja: no work to do."
NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
