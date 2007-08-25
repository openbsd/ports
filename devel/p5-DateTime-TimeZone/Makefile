# $OpenBSD: Makefile,v 1.5 2007/08/25 19:03:40 simon Exp $

COMMENT=		perl DateTime submodule for TZ

MODULES=		cpan
DISTNAME=		DateTime-TimeZone-0.6603
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::devel/p5-Params-Validate \
			::devel/p5-Class-Singleton
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild
REGRESS_DEPENDS=	::devel/p5-DateTime

.include <bsd.port.mk>	
