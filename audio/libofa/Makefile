COMMENT =	Open Fingerprint Architecture library

DISTNAME =	libofa-0.9.3
REVISION =	11
CATEGORIES =	audio devel
SHARED_LIBS +=	ofa	0.0

# GPL
PERMIT_PACKAGE =		Yes

MASTER_SITES =	https://distfiles.sigtrap.nl/

WANTLIB +=	m pthread ${COMPILER_LIBCXX} fftw3

COMPILER =		base-clang ports-gcc base-gcc

# needed to build the examples
BUILD_DEPENDS =	net/curl \
		devel/gettext,-runtime

LIB_DEPENDS =	math/fftw3

FIX_CRLF_FILES =	lib/JAMA/tnt_math_utils.h

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/libofa.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
