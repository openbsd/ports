# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:45 sthen Exp $

MODPY_EGG_VERSION =	1.0.1
COMMENT =	self-contained ISO 3166-1 country definitions library
DISTNAME =	iso3166-${MODPY_EGG_VERSION}
PKGNAME =	py-iso3166-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	0

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
