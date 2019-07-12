# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:12 sthen Exp $

COMMENT=	Baekmuk Korean truetype fonts

DISTNAME=	baekmuk-ttf-2.2
PKGNAME=	ko-${DISTNAME}
REVISION=	3

CATEGORIES=	fonts korean x11

HOMEPAGE=	http://kldp.net/projects/baekmuk

MAINTAINER=	Jung Lee <moorang@gmail.com>

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
