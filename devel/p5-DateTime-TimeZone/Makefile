# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 19:06:15 espie Exp $

COMMENT=		"perl DateTime submodule for TZ"

DISTNAME=		DateTime-TimeZone-0.43
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=DateTime/}

DEPS=			::devel/p5-Params-Validate \
			::devel/p5-Class-Singleton

BUILD_DEPENDS=		${DEPS}
RUN_DEPENDS=		${DEPS}

CONFIGURE_STYLE=	perl modbuild
REGRESS_DEPENDS=	$(DEPS) ::devel/p5-DateTime

.include <bsd.port.mk>	
