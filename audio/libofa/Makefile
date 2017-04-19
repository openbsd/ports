# $OpenBSD: Makefile,v 1.14 2017/04/19 15:40:25 jca Exp $

COMMENT =	Open Fingerprint Architecture library

DISTNAME =	libofa-0.9.3
REVISION =	6
CATEGORIES =	audio devel
HOMEPAGE =	https://code.google.com/p/musicip-libofa/
SHARED_LIBS +=	ofa	0.0

# GPL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=musicip-libofa/}

WANTLIB +=	m pthread ${LIBCXX} fftw3

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
