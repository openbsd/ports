# $OpenBSD
# $FreeBSD: ports/audio/waveplay/Makefile,v 1.2 1999/08/25 04:36:16 obrien Exp $

DISTNAME=	waveplay-19990123
PKGNAME=	waveplay-1.0
CATEGORIES=	audio
MASTER_SITES=	http://dontaku.csce.kyushu-u.ac.jp/~ysonoda/archives/program/FreeBSD/

NEED_VERSION=	1.114

MAINTAINER=	ports@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/waveplay ${PREFIX}/bin/waveplay

post-install:
	@${MKDIR} ${PREFIX}/share/doc/waveplay
	@${STRIP} ${PREFIX}/bin/waveplay
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/waveplay/
	${INSTALL_DATA} ${WRKSRC}/README.jp ${PREFIX}/share/doc/waveplay/

.include <bsd.port.mk>
