# $OpenBSD: Makefile,v 1.1.1.1 2017/02/23 12:23:50 rpointel Exp $

COMMENT =	framework to parse and edit binary files

MODPY_EGG_VERSION = 1.3.3
DISTNAME =	hachoir-core-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/haypo/hachoir/wiki/hachoir-core

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_doc.py -v

.include <bsd.port.mk>
