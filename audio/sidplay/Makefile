# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:41 sthen Exp $

COMMENT=	Commodore 64 music player and SID chip emulator

DISTNAME=	sidplay-base-1.0.9
PKGNAME=	${DISTNAME:S/-base//}
REVISION =	5
CATEGORIES=	audio

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m sidplay>=1 sndio ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://www.distfiles.pl/
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

post-extract:
	@mkdir -p ${WRKSRC}/audio/sndio
	@cp ${FILESDIR}/audiodrv.cpp ${WRKSRC}/audio/sndio
	@cp ${FILESDIR}/audiodrv.h ${WRKSRC}/audio/sndio

.include <bsd.port.mk>
