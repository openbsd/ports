# $OpenBSD: Makefile,v 1.3 2015/03/16 18:07:57 naddy Exp $

COMMENT =		constraint grammar formalism variant

DISTNAME =		vislcg3-0.9.8.8406
REVISION =		0

SHARED_LIBS =		cg3                       0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://beta.visl.sdu.dk/cg3/chunked/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c icui18n icuio icuuc m pthread stdc++

MASTER_SITES =		http://beta.visl.sdu.dk/download/vislcg3/

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/icu4c

.include <bsd.port.mk>
