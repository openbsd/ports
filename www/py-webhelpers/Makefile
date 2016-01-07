# $OpenBSD: Makefile,v 1.10 2016/01/07 21:35:29 jasper Exp $

COMMENT =	helper functions focused on web applications

MODPY_EGG_VERSION = 1.3
DISTNAME =	WebHelpers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	www devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

RUN_DEPENDS =	www/py-routes \
		textproc/py-MarkupSafe
TEST_DEPENDS = ${RUN_DEPENDS} \
		  devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webhelpers
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-webhelpers

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests \
	    -v --with-doctest --exclude webhelpers.feedgenerator lib

.include <bsd.port.mk>
