# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:26 espie Exp $

COMMENT=	command line parsing library for Python

MODPY_EGG_VERSION = 1.5.3
DISTNAME =	optik-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2
CATEGORIES =   	devel

HOMEPAGE =	http://optik.sourceforge.net/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# BSD License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=optik/}

MODULES =	lang/python

DOCSDIR =	${PREFIX}/share/doc/py-optik
EXAMPLESDIR =	${PREFIX}/share/examples/py-optik

post-install:
		${INSTALL_DATA_DIR} ${DOCSDIR}
		${INSTALL_DATA_DIR} ${EXAMPLESDIR}
		${INSTALL_DATA} ${WRKSRC}/doc/* ${DOCSDIR}
		${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}
                                                
NO_TEST=	Yes
                                                                        
.include <bsd.port.mk>
