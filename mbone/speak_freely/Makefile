# $OpenBSD: Makefile,v 1.19 2002/12/23 00:37:51 pvalchev Exp $

COMMENT=	"voice communication over data networks"

DISTNAME=	speak_freely-7.1
CATEGORIES=	mbone audio security

MASTER_SITES=	http://www.fourmilab.ch/speakfree/unix/prior-releases/7.1/

PERMIT_PACKAGE_CDROM=	"generally restrictive license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"generally restrictive license"
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gsm.1.0::audio/gsm

MAKE_ENV=	DUPLEX=-DHALF_DUPLEX

.if (${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
     ${MACHINE_ARCH} == "vax")
MAKE_ENV+=	CCFLAGS=-DM_LITTLE_ENDIAN
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/speak_freely
	@${INSTALL_DATA} ${WRKSRC}/busy.au ${WRKSRC}/ring.au \
		${PREFIX}/lib/speak_freely

.include <bsd.port.mk>
