# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 11:25:09 espie Exp $

COMMENT=		"sensible default end action"

DISTNAME=		Catalyst-Plugin-DefaultEnd-0.06
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
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MAKE_ENV=		TEST_POD=Yes

PKG_ARCH=		*

CONFIGURE_STYLE= 	perl modbuild

.include <bsd.port.mk>
