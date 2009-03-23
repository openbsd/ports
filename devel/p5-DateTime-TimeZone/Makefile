# $OpenBSD: Makefile,v 1.7 2009/03/23 14:02:12 jasper Exp $

COMMENT=		DateTime submodule for TZ

MODULES=		cpan
DISTNAME=		DateTime-TimeZone-0.85
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::devel/p5-Params-Validate \
			::devel/p5-Class-Singleton

CONFIGURE_STYLE=	modbuild
REGRESS_DEPENDS=	::devel/p5-DateTime

.include <bsd.port.mk>	
