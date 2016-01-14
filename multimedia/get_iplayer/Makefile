# $OpenBSD: Makefile,v 1.95 2016/01/14 12:05:01 sthen Exp $

COMMENT=		download/stream programmes from BBC iPlayer

DISTNAME=		get_iplayer-2.95pre20160114a
GH_ACCOUNT=		get-iplayer
GH_PROJECT=		get_iplayer
GH_COMMIT=		480f4b531fca4412abf63ffb3e1d34fe40dac17a

CATEGORIES=		multimedia

HOMEPAGE=		http://www.infradead.org/get_iplayer/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

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
	${INSTALL_MAN} ${WRKSRC}/get_iplayer.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
