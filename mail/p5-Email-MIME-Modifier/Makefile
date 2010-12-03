# $OpenBSD: Makefile,v 1.8 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT=	easily modify MIME objects

MODULES=	cpan
DISTNAME=	Email-MIME-Modifier-1.444
REVISION=	0
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME \
		mail/p5-Email-MessageID \
		mail/p5-Email-MIME-Encodings>=1.313 \
		mail/p5-Email-MIME-ContentType

.include <bsd.port.mk>
