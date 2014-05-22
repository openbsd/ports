# $OpenBSD: Makefile,v 1.7 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	GNUstep based CD player

VERSION =	0.5.1
DISTNAME =	cdplayer-${VERSION}
REVISION =	5

HOMEPAGE =	http://gsburn.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gsburn/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	x11/gnustep
WANTLIB +=	cdaudio PreferencePanes
LIB_DEPENDS +=	audio/libcdaudio \
		x11/gnustep/systempreferences

WRKDIST =	${WRKDIR}/CDPlayer-${VERSION}

MAKE_FLAGS +=	prefs=sysprefs

.include <bsd.port.mk>
