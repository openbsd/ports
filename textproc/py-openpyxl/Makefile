# $OpenBSD: Makefile,v 1.4 2021/03/11 13:01:30 sthen Exp $

COMMENT=	Python library to read/write Excel 2010 xlsx/xlsm files

MODPY_EGG_VERSION=	3.0.7

DISTNAME=	openpyxl-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://openpyxl.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVOR=			python3
FLAVORS=		python3

# not in pypi distfile
NO_TEST=		Yes

RUN_DEPENDS=		misc/py-jdcal${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR}>=0.6.0 \
			textproc/py-et_xmlfile${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

FIX_EXTRACT_PERMISSIONS= Yes

.include <bsd.port.mk>
