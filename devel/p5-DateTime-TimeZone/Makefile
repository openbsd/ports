# $OpenBSD: Makefile,v 1.11 2010/10/18 17:47:59 espie Exp $

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
USE_GROFF =	Yes
REGRESS_DEPENDS=	::devel/p5-DateTime \
			::devel/p5-Test-Output

.include <bsd.port.mk>	
