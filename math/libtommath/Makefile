COMMENT =		number theoretic multiple-precision integer library
CATEGORIES =		math
HOMEPAGE =		https://www.libtom.net/

GH_ACCOUNT =		libtom
GH_PROJECT =		libtommath
GH_TAGNAME =		v1.3.0
REVISION =		0

SHARED_LIBS +=  tommath                   0.0 # 4.0

# WTFPL
PERMIT_PACKAGE =	Yes

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			IGNORE_SPEED=Yes \
			V=1 \
			PREFIX=
FAKE_FLAGS =		DESTDIR=${WRKINST}${PREFIX} \
			LIBPATH=/lib \
			INCPATH=/include
USE_LIBTOOL =		gnu
USE_GMAKE =		Yes
MAKE_FILE =		makefile.shared

ALL_TARGET =		default

# actually run tests
post-test:
	cd ${WRKBUILD} && ${SETENV} ${LIBTOOL} --mode=execute ./test

.include <bsd.port.mk>
