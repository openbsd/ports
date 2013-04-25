# $OpenBSD: Makefile,v 1.5 2013/04/25 16:40:10 sebastia Exp $

COMMENT =	GNUstep based CD player

VERSION =	0.5.1
DISTNAME =	cdplayer-${VERSION}
REVISION =	3

HOMEPAGE =	http://gsburn.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gsburn/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	x11/gnustep
WANTLIB +=	c m pthread cdaudio PreferencePanes
LIB_DEPENDS +=	audio/libcdaudio \
		x11/gnustep/systempreferences

WRKDIST =	${WRKDIR}/CDPlayer-${VERSION}

MAKE_FLAGS +=	prefs=sysprefs

.include <bsd.port.mk>
