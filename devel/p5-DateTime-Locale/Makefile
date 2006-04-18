# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 19:07:01 espie Exp $

COMMENT=		"localization data for perl DateTime.pm"

DISTNAME=		DateTime-Locale-0.22
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
PKG_ARCH=		*

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DateTime/}

DEPS=			::devel/p5-Params-Validate

BUILD_DEPENDS=		${DEPS}
RUN_DEPENDS=		${DEPS}

CONFIGURE_STYLE=	perl modbuild

.include <bsd.port.mk>	
