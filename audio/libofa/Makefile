# $OpenBSD: Makefile,v 1.19 2018/10/28 08:07:36 bentley Exp $

COMMENT =	Open Fingerprint Architecture library

DISTNAME =	libofa-0.9.3
REVISION =	10
CATEGORIES =	audio devel
SHARED_LIBS +=	ofa	0.0

# GPL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://distfiles.nl/

WANTLIB +=	m pthread ${COMPILER_LIBCXX} fftw3

COMPILER =		base-clang ports-gcc base-gcc

# needed to build the examples
BUILD_DEPENDS =	net/curl \
		devel/gettext

LIB_DEPENDS =	math/fftw3

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/libofa.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
