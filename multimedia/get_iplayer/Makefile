# $OpenBSD: Makefile,v 1.89 2015/04/12 11:50:13 sthen Exp $

COMMENT=		download/stream programmes from BBC iPlayer

V=			2.92
REVISION=		2
DISTNAME=		get_iplayer-$V
DISTFILES=		${DISTNAME}{v$V}${EXTRACT_SUFX}
CATEGORIES=		multimedia

# http://git.infradead.org/get_iplayer.git
HOMEPAGE=		http://www.infradead.org/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

MASTER_SITES=		https://github.com/get-iplayer/get_iplayer/archive/

RUN_DEPENDS=		audio/id3lib \
			audio/p5-MP3-Tag \
			graphics/ffmpeg \
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
