COMMENT=	C64 music player and SID chip emulator library

DISTNAME=	libsidplay-1.36.59
CATEGORIES=	audio
SHARED_LIBS +=	sidplay              2.0      # .1.3

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES=		https://distfiles.gentoo.org/distfiles/
EXTRACT_SUFX=	.tgz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/scripts

CONFIGURE_STYLE=	gnu
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--enable-optfixpoint --enable-optendian
.endif

.include <bsd.port.mk>
