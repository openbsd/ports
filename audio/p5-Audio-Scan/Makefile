# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:48 espie Exp $

COMMENT=	XS parser for many common audio formats

DISTNAME=	Audio-Scan-0.39
CATEGORIES=	audio

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	FLAC ogg z
MODULES=	cpan
CONFIGURE_ARGS+=--with-flac-libs="${LOCALBASE}/lib"
USE_GROFF =	Yes

LIB_DEPENDS=	audio/flac

.include <bsd.port.mk>
