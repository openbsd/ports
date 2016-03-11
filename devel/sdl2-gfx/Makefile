# $OpenBSD: Makefile,v 1.6 2016/03/11 19:59:14 naddy Exp $

V =		1.0.1
COMMENT =	primitives drawing/other support functions for SDL2
DISTNAME =	SDL2_gfx-${V}
PKGNAME =	sdl2-gfx-${V}
CATEGORIES =	devel graphics x11
REVISION =	0

SHARED_LIBS +=  SDL2_gfx             0.0      # 0.1
SHARED_LIBS +=  SDL2_gfx-1.0         0.0      # 0.1

HOMEPAGE =	http://www.ferzkopp.net/joomla/content/view/19/14/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 m pthread sndio usbhid

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=sdl2gfx/}

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	gnu

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS +=	--disable-mmx
.endif

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
