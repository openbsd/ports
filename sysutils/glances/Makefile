COMMENT =		cross-platform curses-based monitoring tool

MODPY_EGG_VERSION =	3.1.7
REVISION =		1

DISTNAME =		Glances-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		sysutils

HOMEPAGE =		https://nicolargo.github.io/glances

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-bottle${MODPY_FLAVOR}

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/glances/config.py

.include <bsd.port.mk>
