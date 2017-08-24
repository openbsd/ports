# $OpenBSD: Makefile,v 1.12 2017/08/24 09:45:23 sthen Exp $

# icu4c namespace problem when mixing gcc 4.2 and a c++11 compiler:
# undefined reference to `_ZN6icu_5713UnicodeStringC1EOS0_'
ONLY_FOR_ARCHS=		${CLANG_ARCHS}

COMMENT =		constraint grammar formalism variant

DISTNAME =		cg3-0.9.9~r10800
PKGNAME =		vislcg3-0.9.9.10800
REVISION =		1

SHARED_LIBS =		cg3                       0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://beta.visl.sdu.dk/cg3/chunked/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c icui18n icuio icuuc m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		http://beta.visl.sdu.dk/download/vislcg3/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

COMPILER =		clang
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/icu4c

WRKDIST =		${WRKDIR}/cg3

.include <bsd.port.mk>
