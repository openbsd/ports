# $OpenBSD: Makefile,v 1.12 2017/08/17 18:54:00 jasper Exp $

COMMENT =		automation tool

MODPY_EGG_VERSION =	0.30.3
DISTNAME =		doit-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		http://pydoit.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-cloudpickle,${MODPY_FLAVOR} \
			devel/py-six,${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
