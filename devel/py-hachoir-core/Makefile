# $OpenBSD: Makefile,v 1.2 2018/12/19 13:51:02 danj Exp $

COMMENT =	framework to parse and edit binary files

MODPY_EGG_VERSION = 1.3.3
DISTNAME =	hachoir-core-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION = 	0

CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_doc.py -v

.include <bsd.port.mk>
