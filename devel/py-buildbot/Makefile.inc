# $OpenBSD: Makefile.inc,v 1.25 2020/08/23 07:20:43 landry Exp $

MODPY_EGG_VERSION ?=	2.8.3
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME ?=	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
