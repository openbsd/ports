# $OpenBSD: Makefile,v 1.1.1.1 2011/12/29 15:09:15 fgsch Exp $

COMMENT =	fast, simple object-to-object and broadcast signaling

MODPY_EGG_VERSION = 1.2
DISTNAME =	blinker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://discorporate.us/projects/Blinker/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=/b/blinker/}

MODULES =	lang/python

REGRESS_DEPENDS =	devel/py-nose

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-blinker
	cd ${WRKSRC}/docs/html && pax -rw * ${PREFIX}/share/doc/py-blinker

do-regress:
	cd ${WRKSRC} && for t in ${WRKSRC}/tests/*; do \
	    PYTHONPATH=. ${MODPY_BIN} $${t}; done

.include <bsd.port.mk>
