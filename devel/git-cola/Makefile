COMMENT =	python powered git gui

MODPY_DISTV =	4.8.2
REVISION =		1
DISTNAME =		git-cola-${MODPY_DISTV}

CATEGORIES =	devel x11

HOMEPAGE =	https://git-cola.github.io/

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/git \
		devel/git,-x11 \
		textproc/xxdiff \
		x11/py-qt5 \
		x11/py-qtpy

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/git \
		devel/git,-x11 \
		textproc/xxdiff \
		x11/gtk+4,-guic \
		x11/py-qt5 \
		x11/py-qtpy

TEST_DEPENDS =	devel/py-mock

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/app.py

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
