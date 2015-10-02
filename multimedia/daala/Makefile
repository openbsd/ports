# $OpenBSD: Makefile,v 1.1.1.1 2015/10/02 16:55:54 czarkoff Exp $

COMMENT =		free video codec
DISTNAME =		daala-0.0.20150926
CATEGORIES =		multimedia graphics
HOMEPAGE =		https://xiph.org/daala/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  daalabase                 0.0 # 0.1
SHARED_LIBS +=  daaladec                  0.0 # 0.1
SHARED_LIBS +=  daalaenc                  0.0 # 0.1

WANTLIB += m

GH_ACCOUNT =		xiph
GH_PROJECT =		daala
GH_COMMIT =		af3bb325915599fab53b506d93183ccac48cae2d

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			audio/libogg \
			devel/check \
			devel/libtool
TEST_DEPENDS =		devel/check

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-player \
			--disable-tools \
			--disable-docs

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

post-patch:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				./autogen.sh

.include <bsd.port.mk>
