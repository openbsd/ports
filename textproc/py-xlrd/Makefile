# $OpenBSD: Makefile,v 1.3 2019/03/25 14:29:52 kn Exp $

COMMENT =	extract data from xls and xlsx spreadsheet files

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		xlrd-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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
