# $OpenBSD: Makefile,v 1.22 2009/09/05 15:54:25 sthen Exp $

COMMENT =		download BBC iPlayer and ITV programmes

DISTNAME =		get_iplayer-2.26

CATEGORIES =		multimedia

HOMEPAGE =		http://linuxcentre.net/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://linuxcentre.net/get_iplayer/packages/ \
			http://linuxcentre.net/get_iplayer/packages/archive/

RUN_DEPENDS =		::audio/id3lib \
			:flvstreamer->=1.8:net/flvstreamer \
			::www/p5-HTML-Parser \
			:p5-libwww->=5.826:www/p5-libwww

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/get_iplayer
	${SUBST_CMD} -c ${FILESDIR}/options.sample ${WRKSRC}/options.sample

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_DATA} ${WRKSRC}/options.sample ${PREFIX}/share/get_iplayer
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/* \
	    ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
