# $OpenBSD: Makefile,v 1.30 2015/01/20 09:08:32 jsg Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	x86 with DOS emulator targeted at playing games

DISTNAME=	dosbox-0.74
REVISION=	5
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	http://dosbox.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL SDL SDL_net SDL_sound stdc++ png X11 c m pthread sndio z

LIB_DEPENDS=	devel/sdl-net \
		devel/sdl-sound \
		graphics/png

NO_TEST=	Yes

AUTOCONF_VERSION=       2.69
AUTOMAKE_VERSION=       1.12
BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"
CONFIGURE_ENV+=LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-alsatest

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
