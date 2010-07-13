# $OpenBSD: Makefile,v 1.10 2010/07/13 19:46:11 sthen Exp $

COMMENT=	conversions to and from arbitrary character sets and UTF8

DISTNAME=	Unicode-MapUTF8-1.11
REVISION=	1
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Jcode \
		::converters/p5-Unicode-Map \
		::converters/p5-Unicode-Map8

.include <bsd.port.mk>
