# $OpenBSD: Makefile,v 1.20 2010/12/03 11:44:22 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to libcdaudio
DISTNAME=	Audio-CD-0.04
REVISION=	3
CATEGORIES=	audio

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += cdaudio

MODULES=	cpan
USE_GROFF =	Yes
NO_REGRESS=	Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	audio/libcdaudio

.include <bsd.port.mk>
