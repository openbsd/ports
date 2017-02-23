# $OpenBSD: Makefile,v 1.1.1.1 2017/02/23 12:25:55 rpointel Exp $

COMMENT =	extract metadata using Hachoir library

MODPY_EGG_VERSION = 1.3.3
DISTNAME =	hachoir-metadata-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/haypo/hachoir/wiki/hachoir-metadata

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-hachoir-core \
		devel/py-hachoir-parser \
		x11/py-gtk2

MODPY_SETUP_ARGS = --disable-qt
	
TEST_DEPENDS =	${RUN_DEPENDS}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_doc.py -v

.include <bsd.port.mk>
