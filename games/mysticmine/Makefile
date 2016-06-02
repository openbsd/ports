# $OpenBSD: Makefile,v 1.1.1.1 2016/06/02 11:33:07 bentley Exp $

COMMENT =	one-button treasure collecting game

MODPY_EGG_VERSION =	1.2.0
DISTNAME =	mysticmine-${MODPY_EGG_VERSION}

GH_ACCOUNT =	koonsolo
GH_PROJECT =	MysticMine
GH_COMMIT =	f8354135984e83071d17396d846d7fa91fef1631

CATEGORIES =	games

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread ${MODPY_WANTLIB}

MODULES =		lang/python
BUILD_DEPENDS =		devel/pyrex
RUN_DEPENDS =		devel/pygame \
			devel/pyrex

NO_TEST =		Yes

.include <bsd.port.mk>
