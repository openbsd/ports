# $OpenBSD: Makefile,v 1.6 2008/04/15 09:33:49 martynas Exp $

COMMENT=		Object Relational Manager

MODPY_EGG_VERSION=	0.10.0
DISTNAME=		SQLObject-${MODPY_EGG_VERSION}
PKGNAME=		py-sqlobject-${MODPY_EGG_VERSION}

CATEGORIES=		databases

HOMEPAGE=		http://www.sqlobject.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cheeseshop.python.org/packages/source/S/SQLObject/

MODULES=		lang/python
RUN_DEPENDS=		::www/py-formencode

NO_REGRESS=		Yes

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlobject
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/py-sqlobject/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlobject
	${INSTALL_DATA} ${WRKSRC}/docs/*.py ${PREFIX}/share/examples/py-sqlobject/

.include <bsd.port.mk>
