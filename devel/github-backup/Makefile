# $OpenBSD: Makefile,v 1.2 2018/04/19 20:48:53 sthen Exp $

COMMENT =	 backup a github user or organization

MODPY_EGG_VERSION =	0.20.0
PKGNAME =	github-backup-${MODPY_EGG_VERSION}

GH_ACCOUNT =	josegonzalez
GH_PROJECT =	python-github-backup
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# MIT license
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

.include <bsd.port.mk>
