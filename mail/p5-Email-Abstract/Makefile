# $OpenBSD: Makefile,v 1.14 2013/03/11 11:23:52 espie Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
DISTNAME=	Email-Abstract-3.001
REVISION=	0
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-Simple>=1.999
TEST_DEPENDS=mail/p5-Email-MIME>=1.859 \
		mail/p5-Mail-Box

.include <bsd.port.mk>
