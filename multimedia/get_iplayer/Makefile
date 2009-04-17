# $OpenBSD: Makefile,v 1.1.1.1 2009/04/17 21:27:09 sthen Exp $

COMMENT =		download BBC iPlayer and ITV programmes

DISTNAME =		get_iplayer-1.61

CATEGORIES =		multimedia

HOMEPAGE =		http://linuxcentre.net/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://linuxcentre.net/get_iplayer/packages/

RUN_DEPENDS =		::audio/id3lib \
			::net/rtmpdump \
			::www/p5-HTML-Parser \
			::www/p5-libwww
# XXX wants a newer p5-libwww feature; workaround in patches/patch-get_iplayer

NO_BUILD =		Yes
NO_REGRESS =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
