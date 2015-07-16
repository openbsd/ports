# $OpenBSD: Makefile,v 1.25 2015/07/16 23:57:18 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to libcdaudio
DISTNAME=	Audio-CD-0.04
REVISION =	7
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cdaudio

MODULES=	cpan
NO_TEST=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	audio/libcdaudio

.include <bsd.port.mk>
