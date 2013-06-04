# $OpenBSD: Makefile,v 1.4 2013/06/04 13:16:20 sthen Exp $

COMMENT=	Baekmuk Korean truetype fonts

DISTNAME=	baekmuk-ttf-2.2
PKGNAME=	ko-${DISTNAME}
REVISION=	2

CATEGORIES=	fonts korean x11

HOMEPAGE=	http://kldp.net/projects/baekmuk

MAINTAINER=	Jung Lee <moorang@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	yes

MASTER_SITES=	http://kldp.net/frs/download.php/1429/

FONTDIR=	${PREFIX}/lib/X11/fonts/korean

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/ttf/*.ttf ${FONTDIR}

.include <bsd.port.mk>
