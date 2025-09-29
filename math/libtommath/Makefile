COMMENT =		number theoretic multiple-precision integer library
CATEGORIES =		math
HOMEPAGE =		http://libtom.net/

GH_ACCOUNT =		libtom
GH_PROJECT =		libtommath
GH_TAGNAME =		v1.3.0

# WTFPL
PERMIT_PACKAGE =	Yes

MAKE_FLAGS =		CC="${CC}" \
			IGNORE_SPEED=Yes \
			V=1 \
			PREFIX=
FAKE_FLAGS =		DESTDIR=${WRKINST}${PREFIX} \
			LIBPATH=/lib \
			INCPATH=/include
USE_GMAKE =		Yes
MAKE_FILE =		makefile.unix

ALL_TARGET =		default
TEST_TARGET =		coverage

CFLAGS +=		-fPIC

.include <bsd.port.mk>
