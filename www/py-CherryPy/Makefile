# $OpenBSD: Makefile,v 1.3 2007/01/11 22:45:45 steven Exp $

COMMENT=	"pythonic, object-oriented web development framework"

DISTNAME=	CherryPy-3.0.0
PKGNAME=	py-${DISTNAME}
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
