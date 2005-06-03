# $OpenBSD: Makefile,v 1.19 2005/06/03 01:15:39 jolan Exp $
# assumes unaligned access, no struct padding, little endian
ONLY_FOR_ARCHS=	arm i386

COMMENT=	"simple wav audio player"
DISTNAME=	waveplay-20010924
CATEGORIES=	audio

MASTER_SITES=	http://sore.totto.to/~ysonoda/FreeBSD/ports/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ossaudio

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
