# $OpenBSD: Makefile,v 1.18 2001/02/18 21:36:00 brad Exp $

DISTNAME=	bladeenc-0.93.10-src-unstable-2
PKGNAME=	bladeenc-0.93.10
CATEGORIES=	audio
NEED_VERSION=	1.336
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
