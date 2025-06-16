COMMENT=	extract data from xls spreadsheet files

MODPY_DISTV=	2.0.2
DISTNAME=	xlrd-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc devel

# https://github.com/python-excel/xlrd
HOMEPAGE=	https://www.python-excel.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
# not in pypi sdist
NO_TEST=	Yes

post-install:
	mv ${PREFIX}/bin/runxlrd.py ${PREFIX}/bin/runxlrd

.include <bsd.port.mk>
