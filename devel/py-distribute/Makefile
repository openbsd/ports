# $OpenBSD: Makefile,v 1.8 2014/07/26 11:26:46 zhuk Exp $

COMMENT =		fork of setuptools Python packages

MODPY_EGG_VERSION =	0.6.27
DISTNAME =		distribute-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		http://packages.python.org/distribute/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# PSFL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=d/distribute/}

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && PYTHONPATH=. \
                ${MODPY_BIN} setup.py test


.include <bsd.port.mk>
