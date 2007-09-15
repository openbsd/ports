# $OpenBSD: Makefile,v 1.24 2007/09/15 21:26:03 simon Exp $

COMMENT=	read CD digital audio data through the SCSI bus
DISTNAME=	tosha-0.6
CATEGORIES=	audio

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ossaudio

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=markp/}

MAKE_ENV=	SYSCONFDIR='${SYSCONFDIR}' CC="${CC}"

NO_REGRESS=	Yes

post-patch:
	@cp ${FILESDIR}/libscsi* ${WRKSRC}

.include <bsd.port.mk>
