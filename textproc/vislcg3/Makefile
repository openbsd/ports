# $OpenBSD: Makefile,v 1.14 2018/10/17 06:52:03 bentley Exp $

# icu4c namespace problem when mixing gcc 4.2 and a c++11 compiler:
# undefined reference to `_ZN6icu_5713UnicodeStringC1EOS0_'
ONLY_FOR_ARCHS=		${CLANG_ARCHS}

COMMENT =		constraint grammar formalism variant

DISTNAME =		cg3-1.1.0~r12312
PKGNAME =		vislcg3-1.1.0.12312

SHARED_LIBS =		cg3                       1.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://beta.visl.sdu.dk/cg3/chunked/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c icui18n icuio icuuc m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		https://beta.visl.sdu.dk/download/vislcg3/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

COMPILER =		base-clang ports-clang
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/icu4c

.include <bsd.port.mk>
