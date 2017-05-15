# $OpenBSD: Makefile,v 1.23 2017/05/15 16:39:57 sthen Exp $

COMMENT =		audio codec for lossless, lossy and hybrid compression

DISTNAME =		wavpack-5.1.0
REVISION =		0
CATEGORIES =		audio

HOMEPAGE =		http://www.wavpack.com/

MAINTAINER =		Tim van der Molen <tim@openbsd.org>

SHARED_LIBS +=		wavpack		0.2	# 3.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv m

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		converters/libiconv

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-tests
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DOCDIR =		${PREFIX}/share/doc/wavpack

BUILD_DEPENDS =		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
AUTOMAKE_VERSION =	1.14
AUTOCONF_VERSION =	2.69

pre-configure:
	sed -i 's,#include "md5.h",#include <md5.h>,' ${WRKSRC}/cli/*.c
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -fi

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${WRKSRC}/doc/* ${DOCDIR}
	rm ${PREFIX}/bin/wvtest

do-test:
	${WRKBUILD}/cli/wvtest --default

.include <bsd.port.mk>
