# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $
# $OpenBSD: Makefile,v 1.2 2000/02/02 22:01:44 fgsch Exp $

DISTNAME=	expat
PKGNAME=	expat-1.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.jclark.com/pub/xml/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/

MAINTAINER=	dugsong@monkey.org

USE_ZIP=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmlwf/xmlwf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/xmlparse/xmlparse.h ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/xmltok/xmltok.h ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/libexpat.a ${PREFIX}/lib

.include <bsd.port.mk>
