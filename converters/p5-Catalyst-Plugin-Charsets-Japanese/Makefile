# $OpenBSD: Makefile,v 1.4 2010/10/18 17:06:06 espie Exp $

COMMENT=	jcode interface for catalyst

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
CATEGORIES=	converters www
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::converters/p5-Jcode \
		::www/p5-Catalyst-Runtime

REGRESS_DEPENDS=::devel/p5-Test-Pod

.include <bsd.port.mk>
