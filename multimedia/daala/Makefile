# $OpenBSD: Makefile,v 1.5 2016/05/27 10:13:33 czarkoff Exp $

COMMENT =		free video codec
DISTNAME =		daala-0.0.20160106
CATEGORIES =		multimedia graphics
HOMEPAGE =		https://xiph.org/daala/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>
REVISION =		0

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  daalabase                 1.0
SHARED_LIBS +=  daaladec                  1.0
SHARED_LIBS +=  daalaenc                  1.0

WANTLIB += m

GH_ACCOUNT =		xiph
GH_PROJECT =		daala
GH_COMMIT =		a1f5eac2b50747700644f20488a6be6b007476eb

MODULES =		lang/clang
MODCLANG_ARCHS =	i386 amd64

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			audio/libogg \
			devel/check \
			devel/libtool
TEST_DEPENDS =		devel/check

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-check-asm \
			--disable-doc \
			--disable-player \
			--disable-tools

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

post-patch:
	@echo AUTO_UPDATE=no > ${WRKSRC}/package_version
	@echo PACKAGE_VERSION=\"0.0-1415-g15a1968\" >> ${WRKSRC}/package_version
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	                 AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				./autogen.sh

.include <bsd.port.mk>
