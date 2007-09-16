# $OpenBSD: Makefile,v 1.3 2007/09/16 01:40:27 merdely Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
CATEGORIES=	converters www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Jcode \
		::www/p5-Catalyst-Runtime

REGRESS_DEPENDS=::devel/p5-Test-Pod

.include <bsd.port.mk>
