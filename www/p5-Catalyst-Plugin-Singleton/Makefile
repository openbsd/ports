# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 12:50:04 espie Exp $

COMMENT=		"singleton for the catalyst context"

DISTNAME=		Catalyst-Plugin-Singleton-0.02
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5 

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	perl modbuild
PKG_ARCH=		*

.include <bsd.port.mk>
