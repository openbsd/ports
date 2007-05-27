# $OpenBSD: Makefile,v 1.1.1.1 2007/05/27 15:11:09 martynas Exp $

COMMENT=		"Object Relational Manager"

V=			0.9.0
DISTNAME=		SQLObject-${V}
PKGNAME=		py-sqlobject-${V}

CATEGORIES=		databases lang/python

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
