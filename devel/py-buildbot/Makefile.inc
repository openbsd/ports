MODPY_DISTV ?=	4.2.1
DISTNAME ?=	buildbot_${PART:S/-/_/g}-${MODPY_DISTV}
PKGNAME ?=	py-buildbot-${PART}-${MODPY_DISTV}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/buildbot/buildbot/releases/download/v${MODPY_DISTV}/

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

