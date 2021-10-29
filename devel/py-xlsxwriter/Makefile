# $OpenBSD: Makefile,v 1.28 2021/10/29 15:38:48 sthen Exp $

COMMENT =	Python module for creating Excel XLSX files

MODPY_EGG_VERSION = 1.2.9
DISTNAME =	XlsxWriter-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://xlsxwriter.readthedocs.io/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR =	python3

NO_TEST =	Yes

.include <bsd.port.mk>
