# $OpenBSD: Makefile,v 1.7 2010/04/21 17:30:50 naddy Exp $

COMMENT=	Commodore 64 music player and SID chip emulator

DISTNAME=	sidplay-base-1.0.9
PKGNAME=	${DISTNAME:S/-base//}p0
CATEGORIES=	audio

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ossaudio stdc++

MASTER_SITES=	${MASTER_SITE_OPENBSD}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	sidplay.>=1::audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

.include <bsd.port.mk>
