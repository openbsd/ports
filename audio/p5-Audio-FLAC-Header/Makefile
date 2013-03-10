# $OpenBSD: Makefile,v 1.15 2013/03/10 22:55:04 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME=	Audio-FLAC-Header-2.3
REVISION=	2
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC c ogg

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

LIB_DEPENDS=	audio/flac

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
