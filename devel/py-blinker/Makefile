# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:25 espie Exp $

COMMENT =	fast, simple object-to-object and broadcast signaling

MODPY_EGG_VERSION = 1.2
DISTNAME =	blinker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://discorporate.us/projects/Blinker/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=/b/blinker/}

MODULES =	lang/python

TEST_DEPENDS =	devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-blinker
	cd ${WRKSRC}/docs/html && pax -rw * ${PREFIX}/share/doc/py-blinker

do-test:
	cd ${WRKSRC} && for t in ${WRKSRC}/tests/*; do \
	    PYTHONPATH=. ${MODPY_BIN} $${t}; done

.include <bsd.port.mk>
