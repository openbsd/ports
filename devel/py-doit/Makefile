# $OpenBSD: Makefile,v 1.15 2019/04/28 20:51:32 sthen Exp $

COMMENT =		automation tool

MODPY_EGG_VERSION =	0.31.1
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

RUN_DEPENDS =		devel/py-cloudpickle${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-test${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
