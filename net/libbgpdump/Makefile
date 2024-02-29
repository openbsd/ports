COMMENT=	library to analyze MRT-format BGP dump files

V=		1.6.2
DISTNAME=	libbgpdump-$V
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	bgpdump 1.0

CATEGORIES=	net

HOMEPAGE=	https://github.com/RIPE-NCC/bgpdump/wiki

# License_NCC: "for any purpose and without fee".
PERMIT_PACKAGE=	Yes

WANTLIB=	bz2 c z

SITES=		https://github.com/RIPE-NCC/bgpdump/releases/download/v$V/

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
