# $OpenBSD: Makefile,v 1.12 2001/07/31 22:05:40 naddy Exp $
# $FreeBSD: ports/audio/waveplay/Makefile,v 1.2 1999/08/25 04:36:16 obrien Exp $

# assumes unaligned access, no struct padding, little endian
ONLY_FOR_ARCHS=	i386

COMMENT=	"simple wav audio player"
DISTNAME=	waveplay-20001210
CATEGORIES=	audio
NEED_VERSION=	1.427
MASTER_SITES=	http://sore.totto.to/~ysonoda/FreeBSD/ports/

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
