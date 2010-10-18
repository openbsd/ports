# $OpenBSD: Makefile,v 1.49 2010/10/18 13:52:30 sthen Exp $

COMMENT =		download/stream programmes from BBC iPlayer

DISTNAME =		get_iplayer-2.78
REVISION =		4
CATEGORIES =		multimedia

# http://git.infradead.org/get_iplayer.git
HOMEPAGE =		http://www.infradead.org/get_iplayer/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =		ftp://ftp.infradead.org/pub/get_iplayer/

RUN_DEPENDS =		::audio/id3lib \
			::multimedia/atomicparsley \
			:rtmpdump->=2.1:net/rtmpdump \
			::textproc/p5-XML-Simple \
			::www/p5-HTML-Parser \
			:p5-libwww->=5.826:www/p5-libwww

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
