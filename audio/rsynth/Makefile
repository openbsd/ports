# $OpenBSD: Makefile,v 1.4 1999/04/01 06:20:02 brad Exp $

DISTNAME=	rsynth-2.0
CATEGORIES=	audio

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

BUILD_DEPENDS=	${PREFIX}/lib/libgdbm.a:${PORTSDIR}/databases/gdbm

GNU_CONFIGURE=	YES

pre-configure:
	@${CP} ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c
	@${CP} ${FILESDIR}/config.guess ${WRKSRC}/config.guess
	@${CP} ${FILESDIR}/config.sub ${WRKSRC}/config.sub
	@${CP} ${FILESDIR}/configure ${WRKSRC}/configure

.include <bsd.port.mk>
