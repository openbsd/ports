# $OpenBSD: Makefile,v 1.2 2007/10/08 08:22:43 steven Exp $

COMMENT=	high-level Python web framework

V=		0.96
LNAME=		django
DISTNAME=	Django-${V}
PKGNAME=	py-${LNAME}-${V}p0
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
