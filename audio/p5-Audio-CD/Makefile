# $OpenBSD: Makefile,v 1.26 2016/03/20 19:56:06 naddy Exp $

COMMENT=	interface to libcdaudio
DISTNAME=	Audio-CD-0.04
REVISION =	7
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cdaudio perl

MODULES=	cpan
NO_TEST=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	audio/libcdaudio

.include <bsd.port.mk>
