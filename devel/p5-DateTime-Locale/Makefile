# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT=		"localization data for perl DateTime.pm"

MODULES=		cpan
DISTNAME=		DateTime-Locale-0.22
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

DEPS=			::devel/p5-Params-Validate

BUILD_DEPENDS=		${DEPS}
RUN_DEPENDS=		${DEPS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>	
