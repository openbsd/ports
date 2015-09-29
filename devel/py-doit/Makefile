# $OpenBSD: Makefile,v 1.11 2015/09/29 10:51:53 sthen Exp $

COMMENT =	automation tool
MODPY_EGG_VERSION =	0.29.0
DISTNAME =	doit-${MODPY_EGG_VERSION}
PKGNAME =	py-doit-${MODPY_EGG_VERSION}
CATEGORIES =	devel
REVISION =	1

HOMEPAGE =	http://pydoit.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =	devel/py-cloudpickle \
		devel/py-configparser \
		devel/py-six

NO_TEST =	Yes

.include <bsd.port.mk>
