# $OpenBSD: Makefile,v 1.8 2019/07/12 20:43:37 sthen Exp $

COMMENT=		create multichannel WAV audio files
DISTNAME=		multimux-0.2.5.2
CATEGORIES=		audio
REVISION =		1

HOMEPAGE=		http://panteltje.com/panteltje/dvd/

# GPL
PERMIT_PACKAGE=	Yes

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
