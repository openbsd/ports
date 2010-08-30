# $OpenBSD: Makefile,v 1.2 2010/08/30 22:02:34 sthen Exp $

COMMENT =	helper functions focused on web applications

MODPY_EGG_VERSION = 0.6.4
DISTNAME =	WebHelpers-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WebHelpers/}

MODULES =	lang/python

RUN_DEPENDS =	::www/py-routes
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  ::devel/py-nose

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webhelpers
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-webhelpers

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests \
	    -v --with-doctest --exclude webhelpers.feedgenerator lib

.include <bsd.port.mk>
