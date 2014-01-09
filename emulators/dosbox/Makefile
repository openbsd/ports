# $OpenBSD: Makefile,v 1.28 2014/01/09 10:10:15 sthen Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	x86 with DOS emulator targeted at playing games
BROKEN-hppa =	mpu401.cpp:42: error: expected identifier before numeric constant

DISTNAME=	dosbox-0.74
REVISION=	4
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	http://dosbox.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += SDL SDL_net SDL_sound stdc++ png X11 c m pthread sndio z

LIB_DEPENDS=	devel/sdl-net \
		devel/sdl-sound \
		graphics/png

USE_GROFF=	Yes
NO_TEST=	Yes

AUTOCONF_VERSION=       2.69
AUTOMAKE_VERSION=       1.12
BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-alsatest
CONFIGURE_ARGS+=	--disable-opengl

pre-configure:
	cp ${FILESDIR}/midi_sndio.h ${WRKSRC}/src/gui
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dosbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dosbox

.include <bsd.port.mk>
