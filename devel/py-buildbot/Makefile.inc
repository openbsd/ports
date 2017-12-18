# $OpenBSD: Makefile.inc,v 1.1.1.1 2017/12/18 20:35:45 landry Exp $

MODPY_EGG_VERSION ?=	0.9.14
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
