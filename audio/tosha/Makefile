# $OpenBSD: Makefile,v 1.21 2003/08/09 07:31:54 pvalchev Exp $

BROKEN=		"relies on scsi API no longer part of libutil"

COMMENT=	"read CD digital audio data through the SCSI bus"
DISTNAME=	tosha-0.6
CATEGORIES=	audio

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=markp/}

MAKE_ENV=	SYSCONFDIR='${SYSCONFDIR}' CC="${CC}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
