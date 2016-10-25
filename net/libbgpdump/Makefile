# $OpenBSD: Makefile,v 1.11 2016/10/25 17:10:46 sthen Exp $

COMMENT=	library to analyze MRT-format BGP dump files

DISTNAME=	libbgpdump-1.5.0
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	bgpdump 1.0

CATEGORIES=	net

# License_NCC: "for any purpose and without fee".
PERMIT_PACKAGE_CDROM=	without fee
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.ris.ripe.net/source/bgpdump/

WANTLIB=	bz2 c z
LIB_DEPENDS=	archivers/bzip2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS}"
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib
MAKE_FLAGS+=	LIBbgpdump_VERSION=${LIBbgpdump_VERSION}

NO_TEST=	Yes # some Makefile scaffolding but tests not actually included

pre-configure:
	sed -i -e s,libbgpdump\.so,libbgpdump.so.${LIBbgpdump_VERSION},g \
	    ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpdump ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/libbgpdump.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/bgpdump*.h ${PREFIX}/include

.include <bsd.port.mk>
