# $OpenBSD: Makefile,v 1.4 2006/11/25 16:32:34 espie Exp $

COMMENT=		"perl DateTime submodule for TZ"

MODULES=		cpan
DISTNAME=		DateTime-TimeZone-0.49
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

DEPS=			::devel/p5-Params-Validate \
			::devel/p5-Class-Singleton

BUILD_DEPENDS=		${DEPS}
RUN_DEPENDS=		${DEPS}

CONFIGURE_STYLE=	modbuild
REGRESS_DEPENDS=	::devel/p5-DateTime

.include <bsd.port.mk>	
