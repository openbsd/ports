# $OpenBSD: Makefile,v 1.21 2020/07/03 21:44:30 sthen Exp $

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME =	Audio-FLAC-Header-2.4
CATEGORIES=	audio
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

WANTLIB=	FLAC c ogg perl

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

LIB_DEPENDS=	audio/flac

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
