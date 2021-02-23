# $OpenBSD: Makefile,v 1.10 2021/02/23 19:39:15 sthen Exp $

COMMENT =	 backup a github user or organization

MODPY_EGG_VERSION =	0.33.0
PKGNAME =	github-backup-${MODPY_EGG_VERSION}

GH_ACCOUNT =	josegonzalez
GH_PROJECT =	python-github-backup
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# MIT license
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
