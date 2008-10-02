# $OpenBSD: Makefile,v 1.7 2008/10/02 20:31:16 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME=	Audio-FLAC-Header-1.9
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

WANTLIB=	ogg
LIB_DEPENDS=	FLAC.>=8::audio/flac

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
