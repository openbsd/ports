# $OpenBSD: Makefile,v 1.7 2016/12/26 14:53:05 czarkoff Exp $

COMMENT =		free video codec
DISTNAME =		daala-0.0.20161220
CATEGORIES =		multimedia graphics
HOMEPAGE =		https://xiph.org/daala/
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  daalabase                 2.1
SHARED_LIBS +=  daaladec                  1.0
SHARED_LIBS +=  daalaenc                  2.0

WANTLIB += m

GH_ACCOUNT =		xiph
GH_PROJECT =		daala
GH_COMMIT =		e3508077598a53ae9faf1ce6715e819be9c3cf81

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
