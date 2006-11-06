# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 14:12:11 espie Exp $

COMMENT=		"universal forwarder for catalyst applications"

DISTNAME=		Catalyst-Plugin-Pluggable-0.04
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

CONFIGURE_STYLE= 	perl

PKG_ARCH=		*

.include <bsd.port.mk>
