COMMENT =	python powered git gui

MODPY_EGG_VERSION =	4.8.0
DISTNAME =		git-cola-${MODPY_EGG_VERSION}

CATEGORIES =	devel x11

HOMEPAGE =	https://git-cola.github.io/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/git \
		devel/git,-x11 \
		textproc/xxdiff \
		x11/py-qt5${MODPY_FLAVOR} \
		x11/py-qtpy${MODPY_FLAVOR}

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/git \
		devel/git,-x11 \
		textproc/xxdiff \
		x11/gtk+4,-guic \
		x11/py-qt5${MODPY_FLAVOR} \
		x11/py-qtpy${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/app.py

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
