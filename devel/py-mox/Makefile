# $OpenBSD: Makefile,v 1.11 2017/11/10 11:03:39 jasper Exp $

COMMENT =	Mox is a mock object framework for Python

MODPY_EGG_VERSION = 0.5.3
DISTNAME =	mox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1
CATEGORIES =	devel

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_ADJ_FILES =mox.py stubout.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} mox_test.py

.include <bsd.port.mk>
