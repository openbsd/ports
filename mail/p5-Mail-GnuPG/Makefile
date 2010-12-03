# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT=	handle GnuPG-encrypted/signed messages

DISTNAME=	Mail-GnuPG-0.15
REVISION=	0
CATEGORIES=	mail security

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	security/p5-GnuPG-Interface>=0.31p0 \
		mail/p5-Mail-Tools>=1.74 \
		mail/p5-MIME-tools>=5.426

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>
