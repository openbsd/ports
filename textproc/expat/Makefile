# $OpenBSD: Makefile,v 1.7 2000/10/22 14:03:50 espie Exp $
# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $

DISTNAME=	expat
PKGNAME=	expat-1.1
CATEGORIES=	textproc
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.jclark.com/pub/xml/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://www.jclark.com/xml/expat.html

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

SHLIB=	libexpat.so.1.0
SUBST_VARS=	SHLIB

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -Ixmltok -Ixmlparse -DXML_NS" \
		SHLIB="$(SHLIB)"

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/xml
	${INSTALL_PROGRAM} ${WRKBUILD}/xmlwf/xmlwf ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/xmlparse/xmlparse.h ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKSRC}/xmltok/xmltok.h ${PREFIX}/include/xml
	${INSTALL_DATA} ${WRKBUILD}/libexpat.a ${PREFIX}/lib
	@if [ ${WRKBUILD}/${SHLIB} ]; then \
	   ${INSTALL_DATA} ${WRKBUILD}/${SHLIB} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV=	NO_SHARED_LIBS=	Yes
.endif
