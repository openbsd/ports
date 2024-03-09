COMMENT =	GNUstep based CD player

VERSION =	0.5.1
REVISION =	17
DISTNAME =	cdplayer-${VERSION}

HOMEPAGE =	https://gsburn.sourceforge.net/
SITES =		${SITE_SOURCEFORGE:=gsburn/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	x11/gnustep
WANTLIB +=	cdaudio PreferencePanes
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	audio/libcdaudio \
		x11/gnustep/systempreferences

WRKDIST =	${WRKDIR}/CDPlayer-${VERSION}

MAKE_FLAGS +=	prefs=sysprefs

.include <bsd.port.mk>
