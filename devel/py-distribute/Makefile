# $OpenBSD: Makefile,v 1.4 2012/06/27 19:00:50 rpointel Exp $

COMMENT =		fork of setuptools Python packages

MODPY_EGG_VERSION =	0.6.27
DISTNAME =		distribute-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://packages.python.org/distribute/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# PSFL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=d/distribute/}

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

do-regress:
	cd ${WRKSRC} && PYTHONPATH=. \
                ${MODPY_BIN} setup.py test


.include <bsd.port.mk>
