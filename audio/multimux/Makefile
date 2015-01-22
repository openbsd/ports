# $OpenBSD: Makefile,v 1.5 2015/01/22 21:17:46 naddy Exp $

COMMENT=		create multichannel WAV audio files
DISTNAME=		multimux-0.2.5.2
CATEGORIES=		audio

HOMEPAGE=		http://panteltje.com/panteltje/dvd/
MAINTAINER=		Girish Venkatachalam <girish1729@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		graphics/ffmpeg

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/multimux ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/multimux.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/multimux
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/multimux/

.include <bsd.port.mk>
