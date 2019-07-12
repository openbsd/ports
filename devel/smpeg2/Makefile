# $OpenBSD: Makefile,v 1.8 2019/07/12 21:02:19 sthen Exp $

BROKEN-hppa=	video/mmxflags_asm.S:54: Error: unknown pseudo-op: .note.gnu
COMMENT=	MPEG video player library with sound support

DISTNAME=	smpeg2-2.0.0
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/smpeg/release/
REVISION=	1

SHARED_LIBS=	smpeg2	2.0

HOMEPAGE=	http://icculus.org/smpeg/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL2 c m pthread sndio ${COMPILER_LIBCXX} usbhid

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/sdl2

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV+=  LDFLAGS="-L${X11BASE}/lib"

post-install:
	mv ${PREFIX}/bin/plaympeg ${PREFIX}/bin/plaympeg2
	mv ${PREFIX}/man/man1/plaympeg.1 ${PREFIX}/man/man1/plaympeg2.1
	perl -pi -e s#plaympeg#plaympeg2#g ${PREFIX}/man/man1/plaympeg2.1

.include <bsd.port.mk>
