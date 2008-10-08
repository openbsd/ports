# $OpenBSD: Makefile,v 1.5 2008/10/08 12:42:54 jasper Exp $

COMMENT=		localization data for perl DateTime.pm

MODULES=		cpan
DISTNAME=		DateTime-Locale-0.42
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::devel/p5-List-MoreUtils \
			::devel/p5-Params-Validate
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>	
