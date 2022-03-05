# $OpenBSD: Makefile.inc,v 1.40 2022/03/05 09:15:52 landry Exp $

MODPY_EGG_VERSION ?=	3.4.1
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME ?=	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

