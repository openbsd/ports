# $OpenBSD: Makefile,v 1.10 2000/02/16 10:52:08 espie Exp $

DISTNAME=	rsynth-2.0
CATEGORIES=	audio
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

BUILD_DEPENDS=	${PREFIX}/lib/libgdbm.a:${PORTSDIR}/databases/gdbm

GNU_CONFIGURE=	yes

pre-configure:
	@cp ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c
	@cp ${FILESDIR}/config.guess ${WRKSRC}/config.guess
	@cp ${FILESDIR}/config.sub ${WRKSRC}/config.sub
	@cp ${FILESDIR}/configure ${WRKSRC}/configure

.include <bsd.port.mk>
