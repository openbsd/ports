# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 11:26:41 espie Exp $

COMMENT=		"catalyst plugin for prototype"

DISTNAME=		Catalyst-Plugin-Prototype-1.32
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5 www

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::devel/p5-Class-Data-Inheritable \
			::www/p5-HTML-Prototype

REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	perl
PKG_ARCH=		*

.include <bsd.port.mk>
