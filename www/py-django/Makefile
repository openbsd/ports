# $OpenBSD: Makefile,v 1.9 2009/10/10 17:09:03 steven Exp $

COMMENT=	high-level Python web framework

MODPY_EGG_VERSION=	1.1.1
LNAME=			django
DISTNAME=		Django-${MODPY_EGG_VERSION}
PKGNAME=		py-${LNAME}-${MODPY_EGG_VERSION}
CATEGORIES=		www

HOMEPAGE=	http://www.djangoproject.com/

MAINTAINER=	Ryan Boggs <rmboggs@gmail.com>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://media.djangoproject.com/releases/${MODPY_EGG_VERSION}/

MODULES=	lang/python

NO_REGRESS=	Yes

SUBST_VARS+=	LNAME

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && pax -rw * ${PREFIX}/share/doc/${LNAME}

.include <bsd.port.mk>
