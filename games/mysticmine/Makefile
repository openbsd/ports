# $OpenBSD: Makefile,v 1.4 2020/10/17 18:20:34 daniel Exp $

COMMENT =	one-button treasure collecting game

MODPY_EGG_VERSION =	1.2.0
DISTNAME =	mysticmine-${MODPY_EGG_VERSION}

GH_ACCOUNT =	dewitters
GH_PROJECT =	MysticMine
GH_COMMIT =	2fc0a5eaa0ab299c3a23ce17ae1c56a98055a44c
REVISION =	1

CATEGORIES =	games

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread ${MODPY_WANTLIB}

MODULES =		lang/python
BUILD_DEPNDS =		lang/cython
RUN_DEPENDS =		devel/pygame

NO_TEST =		Yes

.include <bsd.port.mk>
