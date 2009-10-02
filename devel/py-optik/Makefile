# $OpenBSD: Makefile,v 1.15 2009/10/02 22:26:58 benoit Exp $

COMMENT=	command line parsing library for Python

MODPY_EGG_VERSION = 1.5.3
DISTNAME =	optik-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =   	devel

HOMEPAGE =	http://optik.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=optik/}

MODULES =	lang/python

DOCSDIR =	${PREFIX}/share/doc/py-optik
EXAMPLESDIR =	${PREFIX}/share/examples/py-optik

post-install:
		${INSTALL_DATA_DIR} ${DOCSDIR}
		${INSTALL_DATA_DIR} ${EXAMPLESDIR}
		${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCSDIR}
		${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
                                                
NO_REGRESS=	Yes
                                                                        
.include <bsd.port.mk>
