# $OpenBSD: Makefile,v 1.8 2010/11/19 07:23:07 espie Exp $

COMMENT=	handle MIME messages

MODULES=	cpan
DISTNAME=	Email-MIME-1.861
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME-ContentType>=1.014 \
		mail/p5-Email-MIME-Encodings \
		mail/p5-Email-Simple>=2.003 \
		mail/p5-MIME-Types

.include <bsd.port.mk>
