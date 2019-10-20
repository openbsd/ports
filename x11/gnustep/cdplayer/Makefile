# $OpenBSD: Makefile,v 1.15 2019/10/20 08:03:00 ajacoutot Exp $

COMMENT =	GNUstep based CD player

VERSION =	0.5.1
REVISION =	13
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
