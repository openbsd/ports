# $OpenBSD: Makefile,v 1.2 2006/06/03 09:48:04 alek Exp $

COMMENT=	"pythonic, object-oriented web development framework"

DISTNAME=	CherryPy-2.2.1
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.cherrypy.org/ 

MAINTAINER=	Joerg Zinke <umaxx@oleco.net>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cherrypy/}

MODULES=	lang/python

do-regress:
	@cd ${WRKSRC} && ${MODPY_BIN} ./cherrypy/test/test.py 

.include <bsd.port.mk>
