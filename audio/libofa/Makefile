# $OpenBSD: Makefile,v 1.1.1.1 2010/11/19 17:12:15 millert Exp $

COMMENT =	Open Fingerprint Architecture Library

DISTNAME =	libofa-0.9.3
CATEGORIES =	audio devel
HOMEPAGE =	http://code.google.com/p/musicip-libofa/
SHARED_LIBS +=	ofa	0.0

# GPL
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://musicip-libofa.googlecode.com/files/

WANTLIB +=	m stdc++ fftw3

LIB_DEPENDS =	net/curl \
		math/fftw3 \

USE_LIBTOOL =		Yes
SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKBUILD}/libofa.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
