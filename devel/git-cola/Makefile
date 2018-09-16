# $OpenBSD: Makefile,v 1.26 2018/09/16 09:10:44 bket Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	3.2
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}
REVISION =	0

GH_ACCOUNT =	git-cola
GH_PROJECT =	git-cola
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel x11

HOMEPAGE =	https://git-cola.github.io/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python

BUILD_DEPENDS =	devel/gettext-tools \
		devel/git \
		textproc/xxdiff \
		x11/py-qt4 \
		x11/py-qtpy

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/git \
		textproc/xxdiff \
		x11/py-qt4 \
		x11/py-qtpy

TEST_DEPENDS =	devel/py-mock \
		devel/py-test

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
