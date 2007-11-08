# $OpenBSD: Makefile,v 1.3 2007/11/08 22:00:36 merdely Exp $

COMMENT=	high-level Python web framework

VP=		0.96.1
V=		0.96
LNAME=		django
DISTNAME=	Django-${VP}
PKGNAME=	py-${LNAME}-${VP}
CATEGORIES=	www lang/python

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
