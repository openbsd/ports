# $OpenBSD: Makefile.inc,v 1.2 2018/01/14 17:12:10 landry Exp $

MODPY_EGG_VERSION ?=	0.9.15.post1
DISTNAME ?=	buildbot-${PART}-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/post/pl/}

CATEGORIES =	devel devel/py-buildbot

HOMEPAGE ?=	https://buildbot.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
