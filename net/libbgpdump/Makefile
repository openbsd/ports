# $OpenBSD: Makefile,v 1.14 2019/07/14 00:39:38 naddy Exp $

COMMENT=	library to analyze MRT-format BGP dump files

DISTNAME=	libbgpdump-1.6.0
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	bgpdump 1.0

CATEGORIES=	net

HOMEPAGE=	https://bitbucket.org/ripencc/bgpdump/wiki/Home

# License_NCC: "for any purpose and without fee".
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://ris.ripe.net/source/bgpdump/

WANTLIB=	bz2 c z
LIB_DEPENDS=	archivers/bzip2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS}"
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib
MAKE_FLAGS+=	LIBbgpdump_VERSION=${LIBbgpdump_VERSION}

NO_TEST=	Yes	# only in repo

pre-configure:
	sed -i -e s,libbgpdump\.so,libbgpdump.so.${LIBbgpdump_VERSION},g \
	    ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpdump ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/libbgpdump.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/bgpdump*.h ${PREFIX}/include

.include <bsd.port.mk>
