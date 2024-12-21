COMMENT =		cross-platform curses-based monitoring tool

MODPY_DISTV =	3.3.0.4
EPOCH =			0

DISTNAME =		Glances-${MODPY_DISTV}
PKGNAME =		${DISTNAME:L}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://nicolargo.github.io/glances

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
RUN_DEPENDS =		devel/py-future \
			sysutils/py-psutil \
			textproc/py-defusedxml \
			www/py-bottle

pre-configure:
	sed -i 's,/etc,${SYSCONFDIR},g' ${WRKSRC}/glances/config.py

.include <bsd.port.mk>
