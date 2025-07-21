COMMENT=	python powered git gui

MODPY_DISTV=	4.13.0
DISTNAME=	git_cola-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/_/-/}

CATEGORIES=	devel x11

HOMEPAGE=	https://git-cola.github.io/

# GPLv2 only
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/git \
		devel/git,-x11 \
		textproc/py-polib \
		textproc/xxdiff \
		x11/gtk+4,-guic \
		x11/py-qt6 \
		x11/py-qtpy

TEST_DEPENDS=	devel/py-mock

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/app.py

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
