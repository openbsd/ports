# $OpenBSD: Makefile,v 1.1.1.1 2011/07/19 06:30:42 sebastia Exp $

COMMENT =	GNUstep based CD player

VERSION =	0.5.1
DISTNAME =	cdplayer-${VERSION}

HOMEPAGE =	http://gsburn.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gsburn/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	x11/gnustep
WANTLIB +=	c m pthread cdaudio PreferencePanes
LIB_DEPENDS +=	audio/libcdaudio \
		x11/gnustep/systempreferences

WRKDIST =	${WRKDIR}/CDPlayer-${VERSION}

MAKE_FLAGS +=	prefs=sysprefs

# install the header on the right spot, needed by gsburn
post-install:
	mv ${PREFIX}/include/AudioCD \
		${PREFIX}/include/CDPlayer

.include <bsd.port.mk>
