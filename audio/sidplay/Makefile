# $OpenBSD: Makefile,v 1.1.1.1 2002/05/22 22:44:16 naddy Exp $

COMMENT=	"Commodore 64 music player and SID chip emulator"

DISTNAME=	sidplay-base-1.0.8
PKGNAME=	${DISTNAME:S/-base//}
CATEGORIES=	audio
NEED_VERSION=	1.530

HOMEPAGE=	http://www.geocities.com/SiliconValley/Lakes/5147/sidplay/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}packages/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	sidplay.1::audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

.include <bsd.port.mk>
