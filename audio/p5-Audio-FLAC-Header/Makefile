# $OpenBSD: Makefile,v 1.18 2014/12/21 13:32:54 benoit Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME =	Audio-FLAC-Header-2.4
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC c ogg

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

LIB_DEPENDS=	audio/flac

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
