# $OpenBSD: Makefile,v 1.3 2010/09/08 14:08:10 sthen Exp $

COMMENT=	library to analyze MRT-format BGP dump files

DISTNAME=	libbgpdump-1.4.99.11
REVISION=	1

SHARED_LIBS=	bgpdump 0.0

CATEGORIES=	net

# License_NCC: "for any purpose and without fee".
PERMIT_PACKAGE_CDROM=	without fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	without fee
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.ris.ripe.net/source/ \
		http://www.ris.ripe.net/source/OLD/

WANTLIB=	bz2 c z
LIB_DEPENDS=	::archivers/bzip2

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS}"
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib
MAKE_FLAGS+=	LIBbgpdump_VERSION=${LIBbgpdump_VERSION}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpdump ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/testbgpdump ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/libbgpdump.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:MYes}
ALL_TARGET=libbgpdump.a testbgpdump bgpdump
.endif
