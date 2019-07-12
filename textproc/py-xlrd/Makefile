# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:13 sthen Exp $

COMMENT =	extract data from xls and xlsx spreadsheet files

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		xlrd-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =	textproc devel

HOMEPAGE =	http://www.python-excel.org/

# BSD-style
PERMIT_PACKAGE =	Yes

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
