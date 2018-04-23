# $OpenBSD: Makefile.inc,v 1.5 2018/04/23 17:06:04 landry Exp $

MODPY_EGG_VERSION ?=	1.1.1
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
