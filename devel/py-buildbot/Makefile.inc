# $OpenBSD: Makefile.inc,v 1.6 2018/05/20 07:34:45 landry Exp $

MODPY_EGG_VERSION ?=	1.1.2
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
