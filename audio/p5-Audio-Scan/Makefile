# $OpenBSD: Makefile,v 1.1.1.1 2009/10/07 21:14:05 sthen Exp $

COMMENT=	XS parser for many common audio formats

DISTNAME=	Audio-Scan-0.39
CATEGORIES=	audio

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ogg z
MODULES=	cpan
CONFIGURE_ARGS+=--with-flac-libs="${LOCALBASE}/lib"

LIB_DEPENDS=	FLAC::audio/flac

.include <bsd.port.mk>
