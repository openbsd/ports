# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:58 sthen Exp $

COMMENT =	lossless, uncompressed graphics format
DISTNAME =	farbfeld-4
CATEGORIES =	graphics converters

HOMEPAGE =	https://tools.suckless.org/farbfeld
MAINTAINER =	Kaashif Hymabaccus <kaashif@kaashif.co.uk>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c jpeg png

MASTER_SITES =	https://dl.suckless.org/farbfeld/

LIB_DEPENDS =	graphics/png \
		graphics/jpeg

RUN_DEPENDS =	graphics/ImageMagick

MAKE_FLAGS =	CC='${CC}' \
		CFLAGS='${CFLAGS} -I${LOCALBASE}/include' \
		LDFLAGS='${LDFLAGS} -L${LOCALBASE}/lib'

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} \
		${WRKBUILD}/{ff2jpg,ff2pam,ff2png,ff2ppm,jpg2ff,png2ff} \
		${PREFIX}/bin/
	${INSTALL_SCRIPT} ${WRKSRC}/2ff ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/*.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
