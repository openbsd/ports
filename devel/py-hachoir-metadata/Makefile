# $OpenBSD: Makefile,v 1.5 2021/02/23 19:39:19 sthen Exp $

COMMENT =	extract metadata using Hachoir library

MODPY_EGG_VERSION = 1.3.3
DISTNAME =	hachoir-metadata-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-hachoir-core \
		devel/py-hachoir-parser \
		x11/py-gtk2

MODPY_SETUP_ARGS = --disable-qt
	
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_doc.py -v

.include <bsd.port.mk>
