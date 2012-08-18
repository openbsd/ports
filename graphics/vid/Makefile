# $OpenBSD: Makefile,v 1.15 2012/08/18 12:41:38 ajacoutot Exp $

COMMENT=	get images from USB cameras using the OV511(+) chipsets

DISTNAME=	vid-1.0.1
REVISION =	4
CATEGORIES=	graphics

HOMEPAGE=	http://ovtvid-bsd.sourceforge.net/
MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ovtvid-bsd/}

LIB_DEPENDS=	graphics/netpbm
WANTLIB=	c m netpbm

MAKE_FLAGS=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-L${LOCALBASE}/lib -lnetpbm -lm"
ALL_TARGET=	default

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vid ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vid
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/vid/README

.include <bsd.port.mk>
