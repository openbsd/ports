# $OpenBSD: Makefile,v 1.6 2007/05/27 15:25:37 martynas Exp $

COMMENT=	"pythonic, object-oriented web development framework"

V=		3.0.1
DISTNAME=	CherryPy-${V}
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	www lang/python

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
