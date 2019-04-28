# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:41 sthen Exp $

COMMENT =	record terminal sessions as SVG animations

MODPY_EGG_VERSION = 0.8.0
DISTNAME =	termtosvg-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/nbedos/termtosvg

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_VERSION = ${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	devel/py-pyte${MODPY_FLAVOR} \
		devel/py-wcwidth${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR}

.include <bsd.port.mk>
