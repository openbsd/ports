# $OpenBSD: Makefile,v 1.23 2003/02/12 00:35:20 brad Exp $

COMMENT=	"high-quality MP3 encoder"

VERSION=	0.94.2
DISTNAME=	bladeenc-${VERSION}-src-stable
PKGNAME=	bladeenc-${VERSION}p1
CATEGORIES=	audio
MASTER_SITES=	http://bladeenc.mp3.no/source/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/

HOMEPAGE=	http://bladeenc.mp3.no/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	"MP3 patent, http://mp3licensing.com/royalty/swenc.html"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"MP3 patent, http://mp3licensing.com/royalty/swenc.html"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/${DISTNAME:S/-src-stable//}

.include <bsd.port.mk>
