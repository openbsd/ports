# $OpenBSD: Makefile,v 1.10 2020/02/10 20:24:24 kmos Exp $

COMMENT =	record terminal sessions as SVG animations

MODPY_EGG_VERSION = 1.1.0
DISTNAME =	termtosvg-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://nbedos.github.io/termtosvg/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	termtosvg/tests

RUN_DEPENDS =	devel/py-pyte${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
