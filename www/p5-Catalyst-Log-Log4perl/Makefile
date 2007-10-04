# $OpenBSD: Makefile,v 1.4 2007/10/04 21:25:25 jasper Exp $

COMMENT=		Log::Log4perl logging for Catalyst

MODULES=		cpan
DISTNAME=		Catalyst-Log-Log4perl-0.4
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		www devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::devel/p5-Log-Log4perl

.include <bsd.port.mk>
