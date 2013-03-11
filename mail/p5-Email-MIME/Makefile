# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:52 espie Exp $

COMMENT=	handle MIME messages

MODULES=	cpan
DISTNAME=	Email-MIME-1.910
REVISION=	0
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-MessageID \
		mail/p5-Email-MIME-ContentType>=1.014 \
		mail/p5-Email-MIME-Encodings \
		mail/p5-Email-Simple>=2.003 \
		mail/p5-MIME-Types

.include <bsd.port.mk>
