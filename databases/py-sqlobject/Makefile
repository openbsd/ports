# $OpenBSD: Makefile,v 1.5 2008/01/13 17:10:11 martynas Exp $

COMMENT=		Object Relational Manager

VERSION=		0.9.3
DISTNAME=		SQLObject-${VERSION}
PKGNAME=		py-sqlobject-${VERSION}

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

SUBST_VARS=		VERSION

MODPY_SETUPTOOLS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sqlobject
	${INSTALL_DATA} ${WRKSRC}/docs/*.txt ${PREFIX}/share/doc/py-sqlobject/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-sqlobject
	${INSTALL_DATA} ${WRKSRC}/docs/*.py ${PREFIX}/share/examples/py-sqlobject/

.include <bsd.port.mk>
