# $OpenBSD
# $FreeBSD: ports/audio/waveplay/Makefile,v 1.2 1999/08/25 04:36:16 obrien Exp $

DISTNAME=	waveplay-19990123
PKGNAME=	waveplay-1.0
CATEGORIES=	audio
NEED_VERSION=	1.114
MASTER_SITES=	http://dontaku.csce.kyushu-u.ac.jp/~ysonoda/archives/program/FreeBSD/


MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/waveplay ${PREFIX}/bin/waveplay

post-install:
	@mkdir -p ${PREFIX}/share/doc/waveplay
	@${STRIP} ${PREFIX}/bin/waveplay
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/waveplay/
	${INSTALL_DATA} ${WRKSRC}/README.jp ${PREFIX}/share/doc/waveplay/

.include <bsd.port.mk>
