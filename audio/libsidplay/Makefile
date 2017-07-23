# $OpenBSD: Makefile,v 1.19 2017/07/23 09:26:26 espie Exp $

COMMENT=	C64 music player and SID chip emulator library

DISTNAME=	libsidplay-1.36.57
REVISION=	5
CATEGORIES=	audio
SHARED_LIBS +=	sidplay              2.0      # .1.3

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

MASTER_SITES=	https://www.distfiles.pl/
EXTRACT_SUFX=	.tgz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

CONFIGURE_STYLE=	gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-optfixpoint --enable-optendian
.endif

.include <bsd.port.mk>
