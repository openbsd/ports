# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:47 espie Exp $

COMMENT =		constraint grammar formalism variant

DISTNAME =		vislcg3-0.9.8.8406

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
