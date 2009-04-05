# $OpenBSD: Makefile,v 1.9 2009/04/05 00:15:52 martynas Exp $

COMMENT =		Object Relational Manager

MODPY_EGG_VERSION =	0.10.4
DISTNAME =		SQLObject-${MODPY_EGG_VERSION}
PKGNAME =		py-sqlobject-${MODPY_EGG_VERSION}

CATEGORIES =		databases

HOMEPAGE =		http://www.sqlobject.org/

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=S/SQLObject/}

MODULES =		lang/python
RUN_DEPENDS =		::www/py-formencode
REGRESS_DEPENDS =	${RUN_DEPENDS} \
			::devel/py-nose \
			::devel/py-py

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlobject
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/py-sqlobject/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlobject
	${INSTALL_DATA} ${WRKSRC}/docs/*.py \
		${PREFIX}/share/examples/py-sqlobject/

do-regress:
	cd ${WRKSRC}/sqlobject/tests && ${LOCALBASE}/bin/py.test

.include <bsd.port.mk>
