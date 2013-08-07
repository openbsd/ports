# $OpenBSD: Makefile,v 1.8 2013/08/07 21:31:43 naddy Exp $

COMMENT =	Mox is a mock object framework for Python

MODPY_EGG_VERSION = 0.5.3
DISTNAME =	mox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	https://code.google.com/p/pymox/
MASTER_SITES =	https://pymox.googlecode.com/files/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

post-configure:
	@perl -pi -e 's,/usr/bin/python2.4,${MODPY_BIN},' ${WRKSRC}/mox.py ${WRKSRC}/stubout.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} mox_test.py

.include <bsd.port.mk>
