# $OpenBSD: Makefile,v 1.18 2019/07/12 20:47:31 sthen Exp $

COMMENT= 	unified interface to mail representations

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-Abstract-3.008
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =		mail/p5-Email-Simple>=1.999 \
			devel/p5-MRO-Compat \
			devel/p5-Module-Pluggable
TEST_DEPENDS =		mail/p5-Email-MIME>=1.859

.include <bsd.port.mk>
