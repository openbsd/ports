# $OpenBSD: Makefile,v 1.4 2006/01/08 22:12:38 jakemsr Exp $

COMMENT=		"ISO MPEG-4 compliant video codec"

DISTNAME=		xvidcore-1.0.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		multimedia
SHARED_LIBS=		xvidcore	4.0

HOMEPAGE=		http://www.xvid.org/

MAINTAINER=		Waldemar Brodkorb <wbx@openbsd.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=		http://downloads.xvid.org/downloads/

WRKBUILD=		${WRKSRC}/build/generic
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-assembly
CONFIGURE_ENV=		API_MAJOR=${LIBxvidcore_VERSION:R} \
			API_MINOR=${LIBxvidcore_VERSION:E}

.if ${MACHINE_ARCH} == "vax" || ${MACHINE_ARCH} == "m88k"
MAKE_FLAGS+=		SHARED_LIB=""
.endif

NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA} ${WRKBUILD}/=build/libxvidcore.* ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/src/xvid.h ${PREFIX}/include

.include <bsd.port.mk>
