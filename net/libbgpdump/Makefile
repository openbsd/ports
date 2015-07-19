# $OpenBSD: Makefile,v 1.8 2015/07/19 01:46:18 ajacoutot Exp $

COMMENT=	library to analyze MRT-format BGP dump files

DISTNAME=	libbgpdump-1.4.99.14
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	bgpdump 0.0

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

pre-configure:
	perl -pi -e s,libbgpdump\.so,libbgpdump.so.${LIBbgpdump_VERSION},g \
	    ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpdump ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/libbgpdump.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/bgpdump*.h ${PREFIX}/include

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:MYes}
ALL_TARGET=libbgpdump.a bgpdump
.endif
