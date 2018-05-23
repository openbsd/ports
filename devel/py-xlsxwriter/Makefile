# $OpenBSD: Makefile,v 1.8 2018/05/23 07:15:03 rpointel Exp $

COMMENT =	Python module for creating Excel XLSX files

MODPY_EGG_VERSION = 1.0.5
DISTNAME =	XlsxWriter-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	devel

HOMEPAGE =	https://xlsxwriter.readthedocs.io/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST =	Yes

post-install:
	mv ${PREFIX}/bin/vba_extract.py \
		${PREFIX}/bin/vba_extract.py${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
