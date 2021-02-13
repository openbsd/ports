# $OpenBSD: Makefile,v 1.20 2021/02/13 14:13:37 bcallah Exp $

COMMENT=	modern gopher server
REVISION =	0

GH_ACCOUNT=	gophernicus
GH_PROJECT=	gophernicus
GH_TAGNAME=	v3.0.1

CATEGORIES=	net

HOMEPAGE=	gopher://gophernicus.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gophernicus ${PREFIX}/libexec/in.gophernicus
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gophernicus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gophernicus
	cd ${WRKSRC} && ${INSTALL_DATA} LICENSE README INSTALL.md \
	    TODO README.Gophermap gophertag \
	    ${PREFIX}/share/doc/gophernicus/
	cd ${WRKSRC} && ${INSTALL_DATA} gophermap \
	    ${PREFIX}/share/examples/gophernicus/

.include <bsd.port.mk>
