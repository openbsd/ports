COMMENT =		cross-platform curses-based monitoring tool

MODPY_EGG_VERSION =	3.3.0.4
EPOCH =			0

DISTNAME =		Glances-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://nicolargo.github.io/glances

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			textproc/py-defusedxml${MODPY_FLAVOR} \
			www/py-bottle${MODPY_FLAVOR}

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/glances/config.py

.include <bsd.port.mk>
