# $OpenBSD: Makefile,v 1.10 2001/07/29 01:13:50 pvalchev Exp $
# $FreeBSD: ports/audio/waveplay/Makefile,v 1.2 1999/08/25 04:36:16 obrien Exp $

COMMENT=	"simple wav audio player"
DISTNAME=	waveplay-20001210
CATEGORIES=	audio
NEED_VERSION=	1.427
MASTER_SITES=	http://dontaku.csce.kyushu-u.ac.jp/~ysonoda/archives/program/FreeBSD/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
MAKE_FLAGS=		CFLAGS='${CFLAGS}' LIBS=-lossaudio

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/waveplay ${PREFIX}/bin/waveplay
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/waveplay
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/waveplay/
	${INSTALL_DATA} ${WRKSRC}/README.jp ${PREFIX}/share/doc/waveplay/
	${INSTALL_MAN} ${WRKSRC}/waveplay.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/waveplay.ja.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
