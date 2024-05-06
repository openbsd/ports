COMMENT =		JFFS2 filesystem extraction tool

MODPY_EGG_VERSION =	0.4.2
DISTNAME =		jefferson-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core

RUN_DEPENDS =		archivers/py-lzo${MODPY_FLAVOR} \
			devel/py-cstruct${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
