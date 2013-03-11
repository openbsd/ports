# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:47 espie Exp $

COMMENT=	modern gopher server
DISTNAME=	gophernicus-1.4
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://gophernicus.org

MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}/software/gophernicus/server/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/in.gophernicus ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gophernicus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gophernicus
	cd ${WRKSRC} && ${INSTALL_DATA} LICENSE README INSTALL \
	    TODO ChangeLog README.Gophermap gophertag \
	    ${PREFIX}/share/doc/gophernicus/
	cd ${WRKSRC} && ${INSTALL_DATA} gophermap \
	    ${PREFIX}/share/examples/gophernicus/

.include <bsd.port.mk>
