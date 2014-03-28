# $OpenBSD: Makefile,v 1.73 2014/03/28 16:18:21 sthen Exp $

COMMENT=		download/stream programmes from BBC iPlayer

DISTNAME=		get_iplayer-2.85
CATEGORIES=		multimedia
REVISION=		1

# http://git.infradead.org/get_iplayer.git
HOMEPAGE=		http://www.infradead.org/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=		ftp://ftp.infradead.org/pub/get_iplayer/

RUN_DEPENDS=		audio/id3lib \
			audio/p5-MP3-Tag \
			multimedia/atomicparsley \
			net/rtmpdump>=2.4 \
			textproc/p5-XML-Simple \
			www/p5-HTML-Parser>=3.71 \
			www/p5-libwww>=5.826

BUILD_DEPENDS=		${RUN_DEPENDS}

NO_TEST=		Yes
PKG_ARCH=		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/get_iplayer

do-build:
	-cd ${WRKSRC}; env -i HOME=${WRKSRC} ./get_iplayer --manpage get_iplayer.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/get_iplayer/plugins
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -m 644 -c \
	   ${FILESDIR}/options.sample ${PREFIX}/share/get_iplayer/options.sample
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/* \
	    ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
