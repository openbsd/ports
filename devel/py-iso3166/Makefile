# $OpenBSD: Makefile,v 1.1.1.1 2017/06/22 23:10:00 bcallah Exp $

MODPY_EGG_VERSION =	0.8
COMMENT =	self-contained ISO 3166-1 country definitions library
DISTNAME =	iso3166-${MODPY_EGG_VERSION}
PKGNAME =	py-iso3166-${MODPY_EGG_VERSION}
CATEGORIES =	devel

HOMEPAGE =	https://github.com/deactivated/python-iso3166
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
