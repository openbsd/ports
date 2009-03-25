# $OpenBSD: Makefile,v 1.6 2009/03/25 13:52:31 jasper Exp $

COMMENT=	high-level Python web framework

MODPY_EGG_VERSION=	0.96.2
V=			0.96
LNAME=			django
DISTNAME=		Django-${MODPY_EGG_VERSION}
PKGNAME=		py-${LNAME}-${MODPY_EGG_VERSION}p0
CATEGORIES=		www

HOMEPAGE=	http://www.djangoproject.com/

MAINTAINER=	Darrin Chandler <dwchandler@stilyagin.com>

# BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://media.djangoproject.com/releases/${V}/

MODULES=	lang/python

NO_REGRESS=	Yes

SUBST_VARS+=	V LNAME

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${LNAME}
	cd ${WRKSRC}/docs && \
		find . ! -type d -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/${LNAME}/{} \;

.include <bsd.port.mk>
