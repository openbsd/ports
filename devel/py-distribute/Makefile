# $OpenBSD: Makefile,v 1.7 2014/06/03 11:34:24 rpointel Exp $

COMMENT =		fork of setuptools Python packages

MODPY_EGG_VERSION =	0.6.27
DISTNAME =		distribute-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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
