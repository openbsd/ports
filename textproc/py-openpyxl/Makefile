COMMENT=	Python library to read/write Excel 2010 xlsx/xlsm files

MODPY_DISTV=	3.1.5

DISTNAME=	openpyxl-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://openpyxl.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# not in pypi distfile
NO_TEST=	Yes

RUN_DEPENDS=	misc/py-jdcal \
		textproc/py-defusedxml>=0.6.0 \
		textproc/py-et_xmlfile \
		textproc/py-lxml

.include <bsd.port.mk>
