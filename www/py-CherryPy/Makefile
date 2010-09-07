# $OpenBSD: Makefile,v 1.15 2010/09/07 16:52:50 sebastia Exp $

COMMENT=	pythonic, object-oriented web development framework

MODPY_EGG_VERSION=	3.1.1
DISTNAME=		CherryPy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		1
CATEGORIES=		www

HOMEPAGE=	http://www.cherrypy.org/ 

MAINTAINER=	Joerg Zinke <mail@umaxx.net>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.cherrypy.org/cherrypy/${MODPY_EGG_VERSION}/

MODULES=	lang/python

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./cherrypy/test/test.py --dumb

.include <bsd.port.mk>
