# $OpenBSD: Makefile,v 1.12 2000/03/24 23:28:02 espie Exp $

DISTNAME=	rsynth-2.0
CATEGORIES=	audio
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

BUILD_DEPENDS=	${PREFIX}/lib/libgdbm.a::databases/gdbm

GNU_CONFIGURE=	yes

pre-configure:
	@cp ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c
	@cp ${FILESDIR}/config.guess ${WRKSRC}/config.guess
	@cp ${FILESDIR}/config.sub ${WRKSRC}/config.sub
	@cp ${FILESDIR}/configure ${WRKSRC}/configure

.include <bsd.port.mk>
