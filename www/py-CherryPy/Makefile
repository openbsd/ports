# $OpenBSD: Makefile,v 1.11 2008/01/25 20:39:57 martynas Exp $

COMMENT=	pythonic, object-oriented web development framework

VERSION=	3.0.3
DISTNAME=	CherryPy-${VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://www.cherrypy.org/ 

MAINTAINER=	Joerg Zinke <umaxx@oleco.net>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.cherrypy.org/cherrypy/${VERSION}/

MODULES=	lang/python

SUBST_VARS=	VERSION

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./cherrypy/test/test.py --dumb

.include <bsd.port.mk>
