# $OpenBSD: Makefile,v 1.9 2009/09/04 03:11:47 kevlo Exp $

COMMENT=		DateTime submodule for TZ

MODULES=		cpan
DISTNAME=		DateTime-TimeZone-0.93
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Params-Validate \
			::devel/p5-Class-Singleton

CONFIGURE_STYLE=	modbuild
REGRESS_DEPENDS=	::devel/p5-DateTime \
			::devel/p5-Test-Output

.include <bsd.port.mk>	
