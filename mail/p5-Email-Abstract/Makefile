# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:44 naddy Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-Abstract-3.008
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =		mail/p5-Email-Simple>=1.999 \
			devel/p5-MRO-Compat \
			devel/p5-Module-Pluggable
TEST_DEPENDS =		mail/p5-Email-MIME>=1.859

.include <bsd.port.mk>
