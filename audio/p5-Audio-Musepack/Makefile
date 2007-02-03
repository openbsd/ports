# $OpenBSD: Makefile,v 1.2 2007/02/03 07:13:55 steven Exp $

COMMENT=	"object-oriented interface to Musepack/APE file information"

MODULES=	cpan
DISTNAME=	Audio-Musepack-0.7
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-MP3-Info->=1.20:audio/p5-MP3-Info
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
