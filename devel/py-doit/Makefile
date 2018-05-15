# $OpenBSD: Makefile,v 1.13 2018/05/15 11:23:33 espie Exp $

COMMENT =		automation tool

MODPY_EGG_VERSION =	0.30.3
DISTNAME =		doit-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

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
