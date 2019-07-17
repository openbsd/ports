# $OpenBSD: Makefile,v 1.7 2019/07/17 14:49:22 danj Exp $

COMMENT=	Baekmuk Korean truetype fonts

DISTNAME=	baekmuk-ttf-2.2
PKGNAME=	ko-${DISTNAME}
REVISION=	4

CATEGORIES=	fonts korean x11

HOMEPAGE=	http://kldp.net/projects/baekmuk

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://kldp.net/frs/download.php/1429/

FONTDIR=	${PREFIX}/share/fonts/korean

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/ttf/*.ttf ${FONTDIR}

.include <bsd.port.mk>
