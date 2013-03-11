# $OpenBSD: Makefile,v 1.7 2013/03/11 01:30:27 espie Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
REVISION=	0
CATEGORIES=	converters www
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		www/p5-Catalyst-Runtime

TEST_DEPENDS=	devel/p5-Test-Pod

.include <bsd.port.mk>
