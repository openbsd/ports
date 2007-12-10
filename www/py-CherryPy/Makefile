# $OpenBSD: Makefile,v 1.9 2007/12/10 21:07:51 martynas Exp $

COMMENT=	pythonic, object-oriented web development framework

V=		3.0.1
DISTNAME=	CherryPy-${V}
PKGNAME=	py-${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://www.cherrypy.org/ 

MAINTAINER=	Joerg Zinke <umaxx@oleco.net>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.cherrypy.org/cherrypy/${V}/

MODULES=	lang/python

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./cherrypy/test/test.py --dumb

.include <bsd.port.mk>
