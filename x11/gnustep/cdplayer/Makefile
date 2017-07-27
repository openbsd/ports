# $OpenBSD: Makefile,v 1.12 2017/07/27 11:01:33 sthen Exp $

COMMENT =	GNUstep based CD player

VERSION =	0.5.1
REVISION =	10
DISTNAME =	cdplayer-${VERSION}

HOMEPAGE =	http://gsburn.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gsburn/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	x11/gnustep
WANTLIB +=	cdaudio PreferencePanes
WANTLIB += ${COMPILER_LIBCXX}
LIB_DEPENDS +=	audio/libcdaudio \
		x11/gnustep/systempreferences

WRKDIST =	${WRKDIR}/CDPlayer-${VERSION}

MAKE_FLAGS +=	prefs=sysprefs

.include <bsd.port.mk>
