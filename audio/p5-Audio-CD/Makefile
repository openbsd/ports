# $OpenBSD: Makefile,v 1.22 2013/03/10 22:55:04 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to libcdaudio
DISTNAME=	Audio-CD-0.04
REVISION=	4
CATEGORIES=	audio

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cdaudio

MODULES=	cpan
NO_TEST=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	audio/libcdaudio

.include <bsd.port.mk>
