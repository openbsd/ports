# $OpenBSD: Makefile,v 1.1.1.1 2010/04/21 06:48:49 giovanni Exp $

COMMENT =	Mox is a mock object framework for Python

MODPY_EGG_VERSION =0.5.0
DISTNAME =	mox-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel python

HOMEPAGE =	http://code.google.com/p/pymox/
MASTER_SITES =	http://pymox.googlecode.com/files/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/python

post-configure:
	@perl -pi -e 's,/usr/bin/python2.4,${MODPY_BIN},' ${WRKSRC}/mox.py ${WRKSRC}/stubout.py

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} mox_test.py

.include <bsd.port.mk>
