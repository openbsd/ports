# $OpenBSD
# $FreeBSD: ports/audio/waveplay/Makefile,v 1.2 1999/08/25 04:36:16 obrien Exp $

DISTNAME=	waveplay-19990123
PKGNAME=	waveplay-1.0
CATEGORIES=	audio
NEED_VERSION=	1.114
MASTER_SITES=	http://dontaku.csce.kyushu-u.ac.jp/~ysonoda/archives/program/FreeBSD/


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
MAKE_FLAGS=		CFLAGS='${CFLAGS}' LIBS=-lossaudio
FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/waveplay ${PREFIX}/bin/waveplay
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/waveplay
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/waveplay/
	${INSTALL_DATA} ${WRKSRC}/README.jp ${PREFIX}/share/doc/waveplay/

.include <bsd.port.mk>
