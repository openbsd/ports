COMMENT=	Commodore 64 music player and SID chip emulator

DISTNAME=	sidplay-base-1.0.9
PKGNAME=	${DISTNAME:S/-base//}
REVISION =	7
CATEGORIES=	audio

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c m sidplay>=1 sndio ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES=		${SITE_FREEBSD}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

REORDER_DEPENDENCIES=	${PORTSDIR}/infrastructure/mk/automake.dep

post-extract:
	@mkdir -p ${WRKSRC}/audio/sndio
	@cp ${FILESDIR}/audiodrv.cpp ${WRKSRC}/audio/sndio
	@cp ${FILESDIR}/audiodrv.h ${WRKSRC}/audio/sndio

.include <bsd.port.mk>
