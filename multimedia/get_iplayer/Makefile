# $OpenBSD: Makefile,v 1.64 2013/01/27 22:22:25 sthen Exp $

COMMENT =		download/stream programmes from BBC iPlayer

PKGNAME =		get_iplayer-2.82pl2
REVISION =		0
DISTNAME =		get_iplayer-gfa7d46f
CATEGORIES =		multimedia

# http://git.infradead.org/get_iplayer.git
HOMEPAGE =		http://www.infradead.org/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =		http://spacehopper.org/mirrors/
#MASTER_SITES =		ftp://ftp.infradead.org/pub/get_iplayer/

RUN_DEPENDS =		audio/id3lib \
			audio/p5-MP3-Tag \
			multimedia/atomicparsley \
			net/rtmpdump>=2.4 \
			textproc/p5-XML-Simple \
			www/p5-HTML-Parser \
			www/p5-libwww>=5.826

BUILD_DEPENDS =		${RUN_DEPENDS}

NO_REGRESS =		Yes
PKG_ARCH =		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/get_iplayer
	${SUBST_CMD} -c ${FILESDIR}/options.sample ${WRKSRC}/options.sample

do-build:
	-cd ${WRKSRC}; env -i HOME=${WRKSRC} ./get_iplayer --manpage get_iplayer.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_DATA} ${WRKSRC}/options.sample ${PREFIX}/share/get_iplayer
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/* \
	    ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
