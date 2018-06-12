# $OpenBSD: Makefile,v 1.1.1.1 2018/06/12 05:45:45 rpointel Exp $

COMMENT =	multi-producer-multi-consumer signal dispatching mechanism

MODPY_EGG_VERSION = 2.0.5
DISTNAME =	PyDispatcher-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/Py/py-/:L}

CATEGORIES =	devel

HOMEPAGE =	http://pydispatcher.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes
MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
