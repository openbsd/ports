# OpenBSD makefile for:	rsynth
# Version required:	2.0
# Date created:		June 7 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/06/08 02:00:52 angelos Exp $
#

DISTNAME=	rsynth-2.0
CATEGORIES=	audio
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

MAINTAINER=	angelos@openbsd.org

#BUILD_DEPENDS=	${PREFIX}/lib/libgdbm.a:${PORTSDIR}/databases/gdbm
#EXEC_DEPENDS=	auvoxware:${PORTSDIR}/audio/nas

GNU_CONFIGURE=	YES

pre-configure:
	@${CP} ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c
	@${CP} ${FILESDIR}/config.guess ${WRKSRC}/config.guess
	@${CP} ${FILESDIR}/config.sub ${WRKSRC}/config.sub
	@${CP} ${FILESDIR}/configure ${WRKSRC}/configure

.include <bsd.port.mk>
