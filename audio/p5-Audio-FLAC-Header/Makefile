# $OpenBSD: Makefile,v 1.17 2014/06/14 23:23:11 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME=	Audio-FLAC-Header-2.3
REVISION=	4
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC c ogg

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

LIB_DEPENDS=	audio/flac

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
