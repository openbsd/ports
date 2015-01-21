# $OpenBSD: Makefile,v 1.15 2015/01/21 14:19:13 sthen Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
DISTNAME=	Email-Abstract-3.001
REVISION=	0
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-Simple>=1.999
TEST_DEPENDS=mail/p5-Email-MIME>=1.859 \
		mail/p5-Mail-Box

.include <bsd.port.mk>
