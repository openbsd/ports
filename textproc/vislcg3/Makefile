# $OpenBSD: Makefile,v 1.1.1.1 2012/10/11 16:42:57 bentley Exp $

COMMENT =		constraint grammar formalism variant

DISTNAME =		vislcg3-0.9.8.8406

SHARED_LIBS =		cg3                       0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://beta.visl.sdu.dk/cg3/chunked/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=		c icui18n icuio icuuc m pthread stdc++

MASTER_SITES =		http://beta.visl.sdu.dk/download/vislcg3/

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/icu4c

.include <bsd.port.mk>
