COMMENT=	BBS terminal program

DISTNAME=	syncterm-1.1
REVISION=	1

CATEGORIES=	comms net

HOMEPAGE=	http://syncterm.bbsdev.net/

# GPLv2
PERMIT_PACKAGE=	Yes

# sdl2 is dlopen()'d
WANTLIB +=	SDL2 c curses m ossaudio pthread util

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=syncterm/}
EXTRACT_SUFX=	-src.tgz

USE_GMAKE=	Yes
NO_TEST=	Yes

LIB_DEPENDS=	devel/sdl2
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FILE=	GNUmakefile
MAKE_FLAGS=	RELEASE=1 \
		WITHOUT_CRYPTLIB=1 \
		USE_SDL=1 \
		SDL_CONFIG=${LOCALBASE}/bin/sdl2-config \
		QUIET=
CFLAGS+=	-DN_CURSES_LIB -D_XOPEN_SOURCE_EXTENDED=1
CFLAGS+=	${PICFLAG}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mbe}
CFLAGS+=	-D__BIG_ENDIAN__
.endif

FAKE_FLAGS=	PREFIX=${PREFIX}

WRKSRC=		${WRKDIST}/src/syncterm

post-install:
	gzip -d ${PREFIX}/man/man1/syncterm.1.gz

.include <bsd.port.mk>
