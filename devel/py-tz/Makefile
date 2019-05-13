# $OpenBSD: Makefile,v 1.50 2019/05/13 18:06:44 danj Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2018.7
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		http://pytz.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover pytz/tests

.include <bsd.port.mk>
