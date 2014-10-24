# $OpenBSD: Makefile,v 1.79 2014/10/24 17:01:11 nigel Exp $

COMMENT=		download/stream programmes from BBC iPlayer

DISTNAME=		get_iplayer-2.87
REVISION=		0
GH_ACCOUNT=		dinkypumpkin
GH_PROJECT=		get_iplayer
GH_TAGNAME=		v2.87
GH_COMMIT=		d7732f37451b4392fccfbf81ec14d8b4215bd80c
CATEGORIES=		multimedia

# http://git.infradead.org/get_iplayer.git
HOMEPAGE=		http://www.infradead.org/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

#MASTER_SITES=		ftp://ftp.infradead.org/pub/get_iplayer/

RUN_DEPENDS=		audio/id3lib \
			audio/p5-MP3-Tag \
			multimedia/atomicparsley \
			net/rtmpdump>=2.4 \
			textproc/p5-XML-Simple \
			www/p5-HTML-Parser>=3.71 \
			www/p5-LWP-Protocol-https \
			www/p5-libwww>=6.0

BUILD_DEPENDS=		${RUN_DEPENDS}

NO_TEST=		Yes
PKG_ARCH=		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/get_iplayer

do-build:
	-cd ${WRKSRC}; env -i HOME=${WRKSRC} ./get_iplayer --manpage get_iplayer.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/get_iplayer/plugins
	${SUBST_DATA} -m 644 \
	   ${FILESDIR}/options.sample ${PREFIX}/share/get_iplayer/options.sample
	${INSTALL_SCRIPT} ${WRKSRC}/get_iplayer ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/plugins/* \
	    ${PREFIX}/share/get_iplayer/plugins
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
