# $OpenBSD: Makefile,v 1.21 2022/01/23 15:00:37 op Exp $

COMMENT=	modern gopher server

V=		3.1.1
DISTNAME=	gophernicus-${V}

CATEGORIES=	net

HOMEPAGE=	gopher://gophernicus.org/

# BSD
PERMIT_PACKAGE=	Yes

# uses pledge
# uses unveil
WANTLIB += c

MASTER_SITES= https://github.com/gophernicus/gophernicus/releases/download/${V}/
FIX_EXTRACT_PERMISSIONS= yes

CONFIGURE_STYLE= simple
CONFIGURE_ARGS=	--listener=inetd

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/gophernicus ${PREFIX}/libexec/in.gophernicus
	${INSTALL_MAN} ${WRKSRC}/gophernicus.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gophernicus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gophernicus
	cd ${WRKSRC} && ${INSTALL_DATA} LICENSE README.md README.gophermap \
	    gophertag ${PREFIX}/share/doc/gophernicus/
	${INSTALL_DATA} ${WRKSRC}/gophermap.sample \
	    ${PREFIX}/share/examples/gophernicus/gophermap

.include <bsd.port.mk>
