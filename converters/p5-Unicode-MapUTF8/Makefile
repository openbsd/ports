# $OpenBSD: Makefile,v 1.14 2013/03/11 01:30:28 espie Exp $

COMMENT=	conversions to and from arbitrary character sets and UTF8

DISTNAME=	Unicode-MapUTF8-1.11
REVISION=	2
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	converters/p5-Jcode \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8

.include <bsd.port.mk>
