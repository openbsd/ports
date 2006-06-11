# $OpenBSD: Makefile,v 1.10 2006/06/11 18:28:14 naddy Exp $
# $FreeBSD: ports/graphics/vid/Makefile,v 1.5 2001/02/21 07:48:56 roger Exp $

COMMENT=	"get images from USB cameras using the OV511(+) chipsets"

DISTNAME=	vid-1.0.1
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics

HOMEPAGE=	http://ovtvid-bsd.sourceforge.net/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ovtvid-bsd/}

LIB_DEPENDS=	netpbm::graphics/netpbm
WANTLIB=	c m

MAKE_FLAGS=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lnetpbm -lm"
ALL_TARGET=	default

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vid ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vid
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vid/README

.include <bsd.port.mk>
