# $OpenBSD: Makefile.inc,v 1.36 2021/04/28 13:27:19 landry Exp $

MODPY_EGG_VERSION ?=	3.1.1
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME ?=	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

