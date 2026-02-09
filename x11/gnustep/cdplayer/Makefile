COMMENT =	GNUstep based CD player

VERSION =	0.6.0
GH_ACCOUNT =	schik
GH_PROJECT =	cdplayer
GH_TAGNAME =	v${VERSION}
DISTNAME =	cdplayer-${VERSION}

MODULES =	x11/gnustep
WANTLIB +=	cdio cdio_cdda cdio_paranoia DBusKit
WANTLIB += 	${COMPILER_LIBCXX}
LIB_DEPENDS +=	audio/libcdio-paranoia \
		x11/gnustep/dbuskit

RUN_DEPENDS +=	x11/gnustep/cynthiune

.include <bsd.port.mk>
