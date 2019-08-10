# $OpenBSD: Makefile,v 1.42 2019/08/10 06:28:40 fcambus Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS} ${CLANG_ARCHS}

COMMENT=	x86 with DOS emulator targeted at playing games

VERSION=	0.74-3
DISTNAME=	dosbox-${VERSION}
PKGNAME=	dosbox-${VERSION:S/-/./}
CATEGORIES=	games x11 emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dosbox/}

HOMEPAGE=	https://www.dosbox.com/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += GL SDL SDL_net SDL_sound ${COMPILER_LIBCXX} png X11 c m pthread sndio z

COMPILER =		base-clang ports-gcc base-gcc

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

# needs W+X memory
CONFIGURE_ARGS+=	--disable-dynamic-core

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
