# $OpenBSD: Makefile,v 1.20 2001/03/25 17:40:16 brad Exp $

COMMENT=	"high-quality MP3 encoder"

DISTNAME=	bladeenc-0.94.0-src-stable
PKGNAME=	bladeenc-0.94.0
CATEGORIES=	audio
NEED_VERSION=	1.363
MASTER_SITES=	http://bladeenc.mp3.no/source/ \
		http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/

HOMEPAGE=	http://bladeenc.mp3.no/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	"MP3 patent, http://mp3licensing.com/royalty/swenc.html"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"MP3 patent, http://mp3licensing.com/royalty/swenc.html"
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
