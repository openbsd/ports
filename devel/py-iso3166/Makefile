# $OpenBSD: Makefile,v 1.7 2019/12/15 18:01:01 bcallah Exp $

MODPY_EGG_VERSION =	1.0.1
COMMENT =	self-contained ISO 3166-1 country definitions library
DISTNAME =	iso3166-${MODPY_EGG_VERSION}
PKGNAME =	py-iso3166-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://github.com/deactivated/python-iso3166
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
