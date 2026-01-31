COMMENT=		terminal/X11 MPD client

V=			2.1.1
REVISION=		0
DISTNAME=		nncmpp-${V}
EXTRACT_SUFX=		.tar.zst
CATEGORIES=		audio

HOMEPAGE=		https://git.janouch.name/p/nncmpp
SITES=			https://git.janouch.name/p/nncmpp/releases/download/v$V/

# ISC
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xft Xrender c curl curses fontconfig freetype iconv
WANTLIB += m png pthread unistring

MODULES=		devel/cmake

CONFIGURE_ARGS+=	-DWITH_PULSE=OFF

# for iconv
CFLAGS+=		-I${LOCALBASE}/include

BUILD_DEPENDS=		textproc/asciidoctor \
			x11/gnome/librsvg

LIB_DEPENDS =		converters/libunistring \
			graphics/png \
			net/curl

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

.include <bsd.port.mk>
