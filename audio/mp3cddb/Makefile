# $OpenBSD: Makefile,v 1.19 2007/02/03 07:01:10 steven Exp $

COMMENT=	"embedding CDDB information in MP3s"

DISTNAME=	mp3cddb-0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

HOMEPAGE=	http://drewie.host.sk/mp3cddb/

MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::audio/p5-MP3-Info \
		::audio/p5-cddb \
		::audio/mp3info

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mp3cddb
	cd ${WRKSRC} && ${INSTALL_DATA} readme.txt \
	  ${PREFIX}/share/doc/mp3cddb
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddb ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/mp3cddbtag ${PREFIX}/bin

.include <bsd.port.mk>
