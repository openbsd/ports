# $OpenBSD: Makefile,v 1.7 2000/02/11 01:10:07 espie Exp $

DISTNAME=	speak_freely-7.1
CATEGORIES=	mbone audio security
MASTER_SITES=	http://www.fourmilab.ch/speakfree/unix/prior-releases/7.1/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	gsm.1.0:${PORTSDIR}/audio/gsm

MAKE_ENV=	DUPLEX=-DHALF_DUPLEX

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
 ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "pmax" || ${MACHINE_ARCH} == "sparc")
MAKE_ENV+=	CCFLAGS=-DM_LITTLE_ENDIAN
.endif

post-install:
	@mkdir -p ${PREFIX}/lib/speak_freely
	@$(INSTALL_DATA) ${WRKSRC}/busy.au ${WRKSRC}/ring.au \
		${PREFIX}/lib/speak_freely

.include <bsd.port.mk>
