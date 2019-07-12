# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:43 sthen Exp $

COMMENT =		terminal-based nonogram solver

V =			1.9.13
DISTNAME =		nonogram-$V

CATEGORIES =		math

HOMEPAGE =		https://www.lancs.ac.uk/~simpsons/software/pkg-nonowimp

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://www.lancs.ac.uk/~simpsons/archives/

EXTRACT_SUFX =		.zip

LIB_DEPENDS =		math/nonolib

MAKE_FLAGS =		PREFIX="${DESTDIR}${PREFIX}" \
			CC="${CC}" \
			CFLAGS="-I${LOCALBASE}/include \
				-DVERSION=\\\"$V\\\" ${CFLAGS}" \
			nonogram_lib="-L${LOCALBASE}/lib -lnonogram"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nonogram
	${INSTALL_DATA} ${WRKSRC}/README.nonogram ${PREFIX}/share/doc/nonogram
	${INSTALL_DATA} ${WRKSRC}/utnomore.non ${PREFIX}/share/doc/nonogram

.include <bsd.port.mk>
