# $OpenBSD: Makefile,v 1.4 2019/04/19 10:30:58 sthen Exp $

COMMENT =	 backup a github user or organization

MODPY_EGG_VERSION =	0.22.2
PKGNAME =	github-backup-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	josegonzalez
GH_PROJECT =	python-github-backup
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# MIT license
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

.include <bsd.port.mk>
