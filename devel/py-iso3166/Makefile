# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:49 sthen Exp $

MODPY_EGG_VERSION =	1.0
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

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
