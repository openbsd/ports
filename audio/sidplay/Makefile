# $OpenBSD: Makefile,v 1.5 2006/08/01 12:13:28 espie Exp $

COMMENT=	"Commodore 64 music player and SID chip emulator"

DISTNAME=	sidplay-base-1.0.9
PKGNAME=	${DISTNAME:S/-base//}
CATEGORIES=	audio

HOMEPAGE=	http://www.geocities.com/SiliconValley/Lakes/5147/sidplay/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ossaudio stdc++

MASTER_SITES=	${HOMEPAGE}packages/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	sidplay.>=1::audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

.include <bsd.port.mk>
