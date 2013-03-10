# $OpenBSD: Makefile,v 1.6 2013/03/10 22:55:03 espie Exp $

COMMENT =	Open Fingerprint Architecture library

DISTNAME =	libofa-0.9.3
REVISION =	2
CATEGORIES =	audio devel
HOMEPAGE =	http://code.google.com/p/musicip-libofa/
SHARED_LIBS +=	ofa	0.0

# GPL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	http://musicip-libofa.googlecode.com/files/

WANTLIB +=	m stdc++ fftw3

# needed to build the examples
BUILD_DEPENDS =	net/curl \
		devel/gettext

LIB_DEPENDS =	math/fftw3

USE_LIBTOOL =		Yes
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/libofa.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
