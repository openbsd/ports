# OpenBSD makefile for:	mpegaudio
# Date created:		May 20 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 06:41:37 angelos Exp $
#

DISTNAME=	mpegaudio
PKGNAME=	mpegaudio-3.9
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.iuma.com/audio_utils/converters/source/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

MAN1=		mpeg_musicin.1 mpeg_musicout.1

post-install:
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicin.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicout.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
