COMMENT =		nonogram solver library

DISTNAME =		nonolib-4.3.1

CATEGORIES =		math

HOMEPAGE =		https://www.lancs.ac.uk/~simpsons/software/pkg-nonowimp

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://www.lancs.ac.uk/~simpsons/archives/

EXTRACT_SUFX =		.zip

MAKE_FLAGS =		PREFIX="${DESTDIR}${PREFIX}" \
			CC="${CC}" \
			CFLAGS="-std=c99 ${CFLAGS}"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
