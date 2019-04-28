# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:58 sthen Exp $

COMMENT =	extract data from xls and xlsx spreadsheet files

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		xlrd-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =	textproc devel

HOMEPAGE =	http://www.python-excel.org/

MAINTAINER =	Elias M. Mariani <marianielias@gmail.com>

# BSD-style
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes
PORTHOME =		${WRKDIR}

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/runxlrd.py ${PREFIX}/bin/runxlrd${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
