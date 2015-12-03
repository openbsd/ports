# $OpenBSD: Makefile,v 1.31 2015/12/03 21:24:29 sthen Exp $

COMMENT=	high-quality MP3 encoder

VERSION=	0.94.2
DISTNAME=	bladeenc-${VERSION}-src-stable
PKGNAME=	bladeenc-${VERSION}
REVISION=	2
CATEGORIES=	audio
MASTER_SITES=	https://spacehopper.org/mirrors/

# GPL
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src-stable//}

.include <bsd.port.mk>
