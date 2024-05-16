MODPY_EGG_VERSION ?=	3.11.2
DISTNAME ?=	buildbot_${PART:S/-/_/g}-${MODPY_EGG_VERSION}
PKGNAME ?=	py-buildbot-${PART}-${MODPY_EGG_VERSION}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/buildbot/buildbot/releases/download/v${MODPY_EGG_VERSION}/

MODULES =	lang/python

MODPY_PYBUILD =	setuptools

