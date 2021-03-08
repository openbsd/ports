# $OpenBSD: Makefile.inc,v 1.34 2021/03/08 07:58:06 landry Exp $

MODPY_EGG_VERSION ?=	2.10.2
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME ?=	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

