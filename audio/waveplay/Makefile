# $OpenBSD: Makefile,v 1.16 2003/06/12 23:25:39 pvalchev Exp $
# $FreeBSD: ports/audio/waveplay/Makefile,v 1.2 1999/08/25 04:36:16 obrien Exp $

# assumes unaligned access, no struct padding, little endian
ONLY_FOR_ARCHS=	i386

COMMENT=	"simple wav audio player"
DISTNAME=	waveplay-20001210
CATEGORIES=	audio

MASTER_SITES=	http://sore.totto.to/~ysonoda/FreeBSD/ports/

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

MAKE_FLAGS=	CFLAGS='${CFLAGS}' LIBS=-lossaudio

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/waveplay ${PREFIX}/bin/waveplay
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/waveplay
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/waveplay/
	${INSTALL_DATA} ${WRKSRC}/README.jp ${PREFIX}/share/doc/waveplay/
	${INSTALL_MAN} ${WRKSRC}/waveplay.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/waveplay.ja.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
