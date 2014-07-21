# $OpenBSD: Makefile,v 1.13 2014/07/21 06:31:03 giovanni Exp $

COMMENT=	handle MIME messages

MODULES=	cpan
DISTNAME=	Email-MIME-1.926
CATEGORIES=	mail
USE_GROFF =	Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	TEST_POD=Yes

RUN_DEPENDS=	mail/p5-Email-MessageID \
		mail/p5-Email-MIME-ContentType>=1.016 \
		mail/p5-Email-MIME-Encodings>=1.314 \
		mail/p5-Email-Simple>=2.102 \
		mail/p5-MIME-Types

.include <bsd.port.mk>
