# $OpenBSD: Makefile,v 1.2 2020/06/14 10:14:14 ajacoutot Exp $

COMMENT =		C call graphs using Cflow producing linked PDF

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		pycflow2dot-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/johnyf/pycflow2dot

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/cflow \
			graphics/py-dot${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR}

.include <bsd.port.mk>
