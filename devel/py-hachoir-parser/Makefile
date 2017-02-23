# $OpenBSD: Makefile,v 1.1.1.1 2017/02/23 12:27:34 rpointel Exp $

COMMENT =	Hachoir parsers used to open binary files

MODPY_EGG_VERSION = 1.3.4
DISTNAME =	hachoir-parser-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/haypo/hachoir/wiki/hachoir-parser

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-hachoir-core

# Tests need to download external files
do-test:
	cd ${WRKSRC} && PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./tests/download_testcase.py ${WRKSRC}/tests_result/
	cd ${WRKSRC} && PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./tests/run_testcase.py ${WRKSRC}/tests_result/

.include <bsd.port.mk>
