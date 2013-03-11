# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:26 espie Exp $

COMMENT =	Mox is a mock object framework for Python

MODPY_EGG_VERSION = 0.5.3
DISTNAME =	mox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel

HOMEPAGE =	http://code.google.com/p/pymox/
MASTER_SITES =	http://pymox.googlecode.com/files/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

post-configure:
	@perl -pi -e 's,/usr/bin/python2.4,${MODPY_BIN},' ${WRKSRC}/mox.py ${WRKSRC}/stubout.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} mox_test.py

.include <bsd.port.mk>
