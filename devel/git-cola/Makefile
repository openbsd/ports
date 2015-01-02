# $OpenBSD: Makefile,v 1.15 2015/01/02 15:54:38 jca Exp $

COMMENT =	python powered git gui

MODPY_EGG_VERSION=	2.0.8
DISTNAME =	${GH_PROJECT}-${MODPY_EGG_VERSION}

GH_ACCOUNT =	git-cola
GH_PROJECT =	git-cola
GH_TAGNAME =	v${MODPY_EGG_VERSION}
GH_COMMIT =	58e3fec

CATEGORIES =	devel x11

HOMEPAGE =	http://cola.tuxfamily.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python

BUILD_DEPENDS =	devel/git \
		textproc/xxdiff \
		x11/py-qt4

RUN_DEPENDS =	devel/git \
		textproc/xxdiff \
		x11/py-qt4 \
		devel/desktop-file-utils

MODPY_ADJ_FILES= share/git-cola/bin/git-xbase

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cola/app.py

pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	# needs an X server
	rm -f ${WRKSRC}/test/qtutils_test.py

.include <bsd.port.mk>
