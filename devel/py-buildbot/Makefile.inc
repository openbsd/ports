# $OpenBSD: Makefile.inc,v 1.12 2018/12/27 10:40:33 landry Exp $

MODPY_EGG_VERSION ?=	1.7.0
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME ?=	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
