COMMENT=	x86 with DOS emulator targeted at playing games

VERSION=	2024.03.01
DISTNAME=	dosbox-x-v${VERSION}
PKGNAME=	dosbox-x-${VERSION}
CATEGORIES=	games x11 emulators

GH_ACCOUNT=	joncampbell123
GH_PROJECT=	dosbox-x
GH_TAGNAME=	dosbox-x-v${VERSION}

HOMEPAGE=	https://dosbox-x.com/

MAINTAINER=	SASANO Takayoshi <uaa@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += GL SDL2 SDL2_net ${COMPILER_LIBCXX} c m png X11 pthread sndio z
WANTLIB += Xrandr freetype pcap xkbfile avcodec avformat avutil
WANTLIB += glib-2.0 iconv intl swresample swscale slirp fluidsynth

FIX_CRLF_FILES =	Makefile.am include/dos_inc.h

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	audio/fluidsynth \
		devel/sdl2 \
		devel/sdl2-net \
		graphics/png \
		graphics/ffmpeg \
		net/libslirp

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

NO_TEST=	Yes

AUTOCONF_VERSION=       2.69
AUTOMAKE_VERSION=       1.12

CONFIGURE_STYLE= autoreconf
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-alsatest --disable-sdl --enable-sdl2

# needs W+X memory
CONFIGURE_ARGS+=	--disable-dynamic-core

pre-configure:
	cp ${FILESDIR}/midi_sndio.h ${WRKSRC}/src/gui

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.debugger ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.joystick ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.keyboard-layout-handling ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.source-code-description ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.video ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README.xbrz ${PREFIX}/share/doc/dosbox

.include <bsd.port.mk>
