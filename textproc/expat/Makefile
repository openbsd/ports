# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $
# $OpenBSD: Makefile,v 1.4 2000/07/16 08:46:19 brad Exp $

DISTNAME=	expat
PKGNAME=	expat-1.1
CATEGORIES=	textproc
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.jclark.com/pub/xml/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/

HOMEPAGE=	http://www.jclark.com/xml/expat.html

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_ZIP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Ixmltok -Ixmlparse -DXML_NS"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmlwf/xmlwf ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/xmlparse/xmlparse.h ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/xmltok/xmltok.h ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/libexpat.a ${PREFIX}/lib

.include <bsd.port.mk>
