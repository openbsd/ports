# $OpenBSD: Makefile,v 1.16 2017/07/01 20:12:31 bcallah Exp $

COMMENT=	modern gopher server
DISTNAME=	gophernicus-2.5
CATEGORIES=	net

HOMEPAGE=	gopher://gophernicus.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://gophernicus.org/software/gophernicus/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/in.gophernicus ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gophernicus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gophernicus
	cd ${WRKSRC} && ${INSTALL_DATA} LICENSE README INSTALL \
	    TODO ChangeLog README.Gophermap gophertag \
	    ${PREFIX}/share/doc/gophernicus/
	cd ${WRKSRC} && ${INSTALL_DATA} gophermap \
	    ${PREFIX}/share/examples/gophernicus/

.include <bsd.port.mk>
