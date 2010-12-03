# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:22 ajacoutot Exp $

COMMENT=	object-oriented interface to Musepack/APE file information

MODULES=	cpan
DISTNAME=	Audio-Musepack-0.7
REVISION=	0
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	audio/p5-MP3-Info>=1.20
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
