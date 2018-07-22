# $OpenBSD: Makefile,v 1.3 2018/07/22 19:31:02 bcallah Exp $

MODPY_EGG_VERSION =	0.9
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
