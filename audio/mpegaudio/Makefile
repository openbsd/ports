# $OpenBSD: Makefile,v 1.2 1998/10/06 22:54:43 marc Exp $
#

DISTNAME=	mpegaudio
PKGNAME=	mpegaudio-3.9
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.iuma.com/audio_utils/converters/source/
EXTRACT_SUFX=	.tar.Z

post-install:
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicin.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicout.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
