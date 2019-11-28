# $OpenBSD: Makefile,v 1.32 2019/11/28 05:45:19 bket Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	3.6
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}

GH_ACCOUNT =	git-cola
GH_PROJECT =	git-cola
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel x11

HOMEPAGE =	https://git-cola.github.io/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PYTEST =	Yes

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/git \
		devel/git,-x11 \
		textproc/xxdiff \
		x11/py-qt4 \
		x11/py-qtpy

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/git \
		devel/git,-x11 \
		textproc/xxdiff \
		x11/py-qt4 \
		x11/py-qtpy

TEST_DEPENDS =	devel/py-mock

USE_GMAKE =	Yes

MAKE_ENV =	GIT_COLA_NO_VENDOR_LIBS=1

MODPY_ADJ_FILES= share/git-cola/bin/git-xbase

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/app.py

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/git-cola/lib

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
