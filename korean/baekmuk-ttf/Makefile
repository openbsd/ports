# $OpenBSD: Makefile,v 1.1.1.1 2008/10/31 15:29:59 kevlo Exp $

COMMENT=	Baekmuk Korean truetype fonts

DISTNAME=	baekmuk-ttf-2.2

CATEGORIES=	korean x11

HOMEPAGE=	http://kldp.net/projects/baekmuk

MAINTAINER=	Jung <moorang@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	http://kldp.net/frs/download.php/1429/

FONTDIR=	${PREFIX}/lib/X11/fonts/korean

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/ttf/*.ttf ${FONTDIR}

.include <bsd.port.mk>
