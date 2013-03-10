# $OpenBSD: Makefile,v 1.12 2013/03/10 22:55:03 espie Exp $

COMMENT=	C64 music player and SID chip emulator library

DISTNAME=	libsidplay-1.36.57
REVISION=	3
CATEGORIES=	audio
SHARED_LIBS +=	sidplay              2.0      # .1.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		m stdc++

MASTER_SITES=	${MASTER_SITE_OPENBSD}
EXTRACT_SUFX=	.tgz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-optfixpoint --enable-optendian
.endif

.include <bsd.port.mk>
