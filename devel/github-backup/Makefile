# $OpenBSD: Makefile,v 1.1.1.1 2017/12/11 10:06:28 edd Exp $

COMMENT =	 backup a github user or organization

MODPY_EGG_VERSION =	0.14.1
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
