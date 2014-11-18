# $OpenBSD: Makefile,v 1.1.1.1 2014/11/18 12:10:58 benoit Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	2.2.5
DISTNAME =		flake8-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://bitbucket.org/tarek/flake8/

MAINTAINER =		Bertrand Janin <b@janin.com>

# MIT 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=f/flake8/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-unittest2 \
			devel/py-mock

RUN_DEPENDS =		devel/pep8 \
			devel/py-mccabe \
			devel/pyflakes

do-test:
	cd ${WRKSRC} && unit2 discover

.include <bsd.port.mk>
