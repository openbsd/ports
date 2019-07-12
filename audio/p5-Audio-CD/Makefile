# $OpenBSD: Makefile,v 1.27 2019/07/12 20:43:37 sthen Exp $

COMMENT=	interface to libcdaudio
DISTNAME=	Audio-CD-0.04
REVISION =	7
CATEGORIES=	audio

PERMIT_PACKAGE=	Yes

WANTLIB += c cdaudio perl

MODULES=	cpan
NO_TEST=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	audio/libcdaudio

.include <bsd.port.mk>
