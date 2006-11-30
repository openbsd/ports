# $OpenBSD: Makefile,v 1.11 2006/11/30 20:34:18 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to libcdaudio"
DISTNAME=	Audio-CD-0.04
CATEGORIES=	audio

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan
NO_REGRESS=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	cdaudio.>=1::audio/libcdaudio

.include <bsd.port.mk>
