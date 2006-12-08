# $OpenBSD: Makefile,v 1.1.1.1 2006/12/08 06:57:47 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to FLAC header metadata"

MODULES=	cpan
DISTNAME=	Audio-FLAC-Header-1.4
CATEGORIES=	audio

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	FLAC.>=7::audio/flac

.include <bsd.port.mk>
