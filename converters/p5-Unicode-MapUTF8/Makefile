# $OpenBSD: Makefile,v 1.11 2010/10/18 17:06:06 espie Exp $

COMMENT=	conversions to and from arbitrary character sets and UTF8

DISTNAME=	Unicode-MapUTF8-1.11
REVISION=	1
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Jcode \
		::converters/p5-Unicode-Map \
		::converters/p5-Unicode-Map8

.include <bsd.port.mk>
