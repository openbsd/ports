# $OpenBSD: Makefile,v 1.3 2012/12/22 10:48:19 landry Exp $

COMMENT=	modern gopher server
DISTNAME=	gophernicus-1.4
CATEGORIES=	net

HOMEPAGE=	http://gophernicus.org

MAINTAINER=	Brian Callahan <bcallah@devio.us>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}/software/gophernicus/server/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
NO_REGRESS=	Yes

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
