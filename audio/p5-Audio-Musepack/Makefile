# $OpenBSD: Makefile,v 1.9 2013/07/01 10:39:17 sthen Exp $

COMMENT=	object-oriented interface to Musepack/APE file information

MODULES=	cpan
DISTNAME=	Audio-Musepack-0.7
REVISION=	1
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	audio/p5-MP3-Info>=1.20
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
