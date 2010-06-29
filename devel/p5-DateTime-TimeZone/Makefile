# $OpenBSD: Makefile,v 1.10 2010/06/29 16:45:34 jim Exp $

COMMENT=		DateTime submodule for TZ

MODULES=		cpan
DISTNAME=		DateTime-TimeZone-1.19
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
