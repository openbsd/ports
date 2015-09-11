# $OpenBSD: Makefile,v 1.30 2015/09/11 19:50:48 sthen Exp $

COMMENT=	high-quality MP3 encoder

VERSION=	0.94.2
DISTNAME=	bladeenc-${VERSION}-src-stable
PKGNAME=	bladeenc-${VERSION}
REVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://spacehopper.org/mirrors/

# GPL
PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src-stable//}

.include <bsd.port.mk>
