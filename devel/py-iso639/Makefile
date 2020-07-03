# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:45 sthen Exp $

MODPY_EGG_VERSION =	0.4.5
COMMENT =	Python library for the ISO 639 language code standard
DISTNAME =	iso-639-${MODPY_EGG_VERSION}
PKGNAME =	py-iso639-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	2

HOMEPAGE =	https://github.com/noumar/iso639
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
