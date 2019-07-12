# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:09 sthen Exp $

COMMENT =	 backup a github user or organization

MODPY_EGG_VERSION =	0.22.2
PKGNAME =	github-backup-${MODPY_EGG_VERSION}
REVISION =	1

GH_ACCOUNT =	josegonzalez
GH_PROJECT =	python-github-backup
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# MIT license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

.include <bsd.port.mk>
