# $OpenBSD: Makefile,v 1.5 2016/04/26 08:25:50 jasper Exp $

BROKEN=			undefined reference to `_ZN6icu_5713UnicodeStringC1EOS0_'

COMMENT =		constraint grammar formalism variant

DISTNAME =		cg3-0.9.9~r10800
PKGNAME =		vislcg3-0.9.9.10800

SHARED_LIBS =		cg3                       0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://beta.visl.sdu.dk/cg3/chunked/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c icui18n icuio icuuc m pthread stdc++

MASTER_SITES =		http://beta.visl.sdu.dk/download/vislcg3/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			lang/clang
MODCLANG_LANGS =	c c++
MODCLANG_ARCHS =	*
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/icu4c

WRKDIST =		${WRKDIR}/cg3

.include <bsd.port.mk>
