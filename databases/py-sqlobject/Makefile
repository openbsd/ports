# $OpenBSD: Makefile,v 1.8 2009/03/14 14:47:28 espie Exp $

COMMENT=		Object Relational Manager

MODPY_EGG_VERSION=	0.10.2
DISTNAME=		SQLObject-${MODPY_EGG_VERSION}
PKGNAME=		py-sqlobject-${MODPY_EGG_VERSION}p0

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
