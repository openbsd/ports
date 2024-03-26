COMMENT=		terminal/X11 MPD client

V=			2.1.1
V.liberty=		969a4cfc3ea1c4d7c0327907385fc64906ed5d4c
V.termo=		2518b53e5ae4579bf84ed58fa7a62806f64e861c

DISTNAME=		nncmpp-${V}
DISTFILES=		nncmpp-{v}${V}${EXTRACT_SUFX}

CATEGORIES=		audio

HOMEPAGE=		https://git.janouch.name/p/nncmpp
SITES=			${HOMEPAGE}/archive/

DISTFILES.liberty=	liberty-{}${V.liberty}.tar.gz
SITES.liberty=		https://git.janouch.name/p/liberty/archive/

DISTFILES.termo=	termo-{}${V.termo}.tar.gz
SITES.termo=		https://git.janouch.name/p/termo/archive/

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

WRKDIST=		${WRKDIR}/nncmpp

post-extract:
	cd ${WRKSRC} && mv -f ../liberty ./ && mv -f ../termo ./

.include <bsd.port.mk>
