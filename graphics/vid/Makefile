# $OpenBSD: Makefile,v 1.7 2002/12/29 20:08:47 fgsch Exp $
# $FreeBSD: ports/graphics/vid/Makefile,v 1.5 2001/02/21 07:48:56 roger Exp $

COMMENT=	"get images from USB cameras using the OV511(+) chipsets"

DISTNAME=	vid-1.0.1
CATEGORIES=	graphics

HOMEPAGE=	http://members.home.com/housel/

# GPL
PERMIT_PACKAGE_CDROM=	    Yes
PERMIT_PACKAGE_FTP=	    Yes
PERMIT_DISTFILES_CDROM=	    Yes
PERMIT_DISTFILES_FTP=	    Yes

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	pbm,pgm,pnm,ppm::graphics/netpbm

ALL_TARGET=
MAKE_FLAGS=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lpnm -lppm -lpbm -lpgm"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vid ${PREFIX}/bin

NO_REGRESS=	Yes

.include <bsd.port.mk>
