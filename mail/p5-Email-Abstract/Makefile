# $OpenBSD: Makefile,v 1.16 2015/01/26 08:53:13 benoit Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
DISTNAME =	Email-Abstract-3.008
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =		mail/p5-Email-Simple>=1.999 \
			devel/p5-MRO-Compat \
			devel/p5-Module-Pluggable
TEST_DEPENDS =		mail/p5-Email-MIME>=1.859

.include <bsd.port.mk>
