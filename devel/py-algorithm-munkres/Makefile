# $OpenBSD: Makefile,v 1.7 2019/07/12 20:45:17 sthen Exp $

COMMENT =	munkres algorithm for the Assignment Problem

MODPY_EGG_VERSION = 1.0.10
DISTNAME =	munkres-${MODPY_EGG_VERSION}
PKGNAME = 	py-algorithm-${DISTNAME}
REVISION =      0

CATEGORIES =	devel

HOMEPAGE =	http://software.clapper.org/munkres/

# Apache v2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

NO_TEST  =	Yes

.include <bsd.port.mk>
