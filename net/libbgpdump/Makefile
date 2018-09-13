# $OpenBSD: Makefile,v 1.12 2018/09/13 09:14:39 sthen Exp $

COMMENT=	library to analyze MRT-format BGP dump files

PKGNAME=	libbgpdump-1.5.0.20180302
DISTNAME=	ripencc-bgpdump-99da8741c8c8

SHARED_LIBS=	bgpdump 1.0

CATEGORIES=	net

HOMEPAGE=	https://bitbucket.org/ripencc/bgpdump/wiki/Home

# License_NCC: "for any purpose and without fee".
PERMIT_PACKAGE_CDROM=	without fee
PERMIT_PACKAGE_FTP=	Yes

# mirrored from https://bitbucket.org/ripencc/bgpdump/get/99da8741c8c8.tar.gz
MASTER_SITES=	https://spacehopper.org/mirrors/

WANTLIB=	bz2 c z
LIB_DEPENDS=	archivers/bzip2

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CFLAGS="${CFLAGS}"
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib
MAKE_FLAGS+=	LIBbgpdump_VERSION=${LIBbgpdump_VERSION}

pre-configure:
	sed -i -e s,libbgpdump\.so,libbgpdump.so.${LIBbgpdump_VERSION},g \
	    ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bgpdump ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/libbgpdump.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/bgpdump*.h ${PREFIX}/include

.include <bsd.port.mk>
