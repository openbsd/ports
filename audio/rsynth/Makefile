# $OpenBSD: Makefile,v 1.3 1999/04/01 02:57:51 brad Exp $

DISTNAME=	rsynth-2.0
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

BUILD_DEPENDS=	${PREFIX}/lib/libgdbm.a:${PORTSDIR}/databases/gdbm
#EXEC_DEPENDS=	auvoxware:${PORTSDIR}/audio/nas

GNU_CONFIGURE=	YES

pre-configure:
	@${CP} ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c
	@${CP} ${FILESDIR}/config.guess ${WRKSRC}/config.guess
	@${CP} ${FILESDIR}/config.sub ${WRKSRC}/config.sub
	@${CP} ${FILESDIR}/configure ${WRKSRC}/configure

.include <bsd.port.mk>
