# $OpenBSD: Makefile,v 1.8 2020/07/03 21:13:17 sthen Exp $

COMMENT =	extract data from xls and xlsx spreadsheet files

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		xlrd-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =	textproc devel

HOMEPAGE =	http://www.python-excel.org/

MAINTAINER=	Elias M. Mariani <marianielias@gmail.com>

# BSD-style
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes
PORTHOME =		${WRKDIR}

FLAVORS =	python3
FLAVOR =	python3

post-install:
	mv ${PREFIX}/bin/runxlrd.py ${PREFIX}/bin/runxlrd${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
