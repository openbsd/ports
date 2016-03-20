# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:06 naddy Exp $

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME =	Audio-FLAC-Header-2.4
CATEGORIES=	audio

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	FLAC c ogg perl

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

LIB_DEPENDS=	audio/flac

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
