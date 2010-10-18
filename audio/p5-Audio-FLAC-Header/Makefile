# $OpenBSD: Makefile,v 1.11 2010/10/18 22:43:10 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to FLAC header metadata

MODULES=	cpan
DISTNAME=	Audio-FLAC-Header-2.3
REVISION=	0
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=	INCPATH="${LOCALBASE}/include" LIBPATH="${LOCALBASE}/lib"

WANTLIB=	FLAC ogg
LIB_DEPENDS=	::audio/flac

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
