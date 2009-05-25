# $OpenBSD: Makefile,v 1.9 2009/05/25 00:22:52 sthen Exp $

COMMENT =		download BBC iPlayer and ITV programmes

DISTNAME =		get_iplayer-1.88

CATEGORIES =		multimedia

HOMEPAGE =		http://linuxcentre.net/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://linuxcentre.net/get_iplayer/packages/

RUN_DEPENDS =		::audio/id3lib \
			::net/flvstreamer \
			::www/p5-HTML-Parser \
			:p5-libwww->=5.826:www/p5-libwww

NO_BUILD =		Yes
NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/get_iplayer

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/* \
	    ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
