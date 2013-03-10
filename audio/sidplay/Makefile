# $OpenBSD: Makefile,v 1.10 2013/03/10 22:55:05 espie Exp $

COMMENT=	Commodore 64 music player and SID chip emulator

DISTNAME=	sidplay-base-1.0.9
PKGNAME=	${DISTNAME:S/-base//}
REVISION=	0
CATEGORIES=	audio

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ossaudio sidplay>=1 stdc++

MASTER_SITES=	${MASTER_SITE_OPENBSD}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

.include <bsd.port.mk>
