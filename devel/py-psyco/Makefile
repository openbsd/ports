# $OpenBSD: Makefile,v 1.1.1.1 2005/01/11 00:01:36 fgsch Exp $

COMMENT=	"extension module to speed up the execution of Python code"

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 

DISTNAME=	psyco-1.3-src	
PKGNAME=	py-${DISTNAME:S/-src//}
CATEGORIES=	devel

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=psyco/}
HOMEPAGE=	http://psyco.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python

WRKSRC=		${WRKDIR}/${DISTNAME:S/-src//}

do-regress: fake
	@cd ${WRKSRC}/test && env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} ./basetests.py

.include <bsd.port.mk>
