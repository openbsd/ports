# $OpenBSD: Makefile,v 1.53 2019/10/23 14:59:32 sthen Exp $

COMMENT =		Python API for dealing with timezones

MODPY_EGG_VERSION =	2019.3
DISTNAME =		pytz-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^py/py-/}
CATEGORIES =		devel

HOMEPAGE =		https://pythonhosted.org/pytz/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS=		python3
FLAVOR?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover pytz/tests

.include <bsd.port.mk>
