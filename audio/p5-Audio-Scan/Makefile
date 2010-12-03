# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:22 ajacoutot Exp $

COMMENT=	XS parser for many common audio formats

DISTNAME=	Audio-Scan-0.39
REVISION=	0
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
