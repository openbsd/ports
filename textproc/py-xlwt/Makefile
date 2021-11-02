# $OpenBSD: Makefile,v 1.3 2021/11/02 00:02:41 sthen Exp $

COMMENT =	create spreadsheet files compatible with MS Excel 95-2003

MODPY_EGG_VERSION =	1.3.0

DISTNAME =	xlwt-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	textproc devel

HOMEPAGE =	http://www.python-excel.org/

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
FLAVOR =	python3
FLAVORS =	python3

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-xlwt
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${PREFIX}/share/examples/py-xlwt

.include <bsd.port.mk>
