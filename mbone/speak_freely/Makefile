# $OpenBSD: Makefile,v 1.12 2000/04/08 07:20:58 kevlo Exp $

DISTNAME=	speak_freely-7.1
CATEGORIES=	mbone audio security
NEED_VERSION=	1.230
MASTER_SITES=	http://www.fourmilab.ch/speakfree/unix/prior-releases/7.1/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"generally restrictive license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"generally restrictive license"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gsm.1.0::audio/gsm

FAKE=		Yes

MAKE_ENV=	DUPLEX=-DHALF_DUPLEX

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arc" || \
 ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "pmax" || ${MACHINE_ARCH} == "sparc")
MAKE_ENV+=	CCFLAGS=-DM_LITTLE_ENDIAN
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/speak_freely
	@$(INSTALL_DATA) ${WRKSRC}/busy.au ${WRKSRC}/ring.au \
		${PREFIX}/lib/speak_freely

.include <bsd.port.mk>
