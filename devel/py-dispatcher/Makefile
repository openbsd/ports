# $OpenBSD: Makefile,v 1.6 2021/10/29 15:38:43 sthen Exp $

COMMENT =	multi-producer-multi-consumer signal dispatching mechanism

MODPY_EGG_VERSION = 2.0.5
DISTNAME =	PyDispatcher-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/Py/py-/:L}
REVISION =	3

CATEGORIES =	devel

HOMEPAGE =	http://pydispatcher.sourceforge.net/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes
MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
