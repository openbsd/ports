# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 12:35:31 espie Exp $

COMMENT=		"catalyst helper for CRUD scaffolding"

DISTNAME=		Catalyst-Helper-Controller-Scaffold-0.04
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5 www

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Catalyst/}


RUN_DEPENDS=		::databases/p5-Class-DBI-AsForm \
			::www/p5-Catalyst-Plugin-FormValidator \
			::databases/p5-Class-DBI-FromForm \
			::textproc/p5-Template-Plugin-Class \
			::textproc/p5-Catalyst-View-TT
REGRESS_DEPENDS=	${RUN_DEPENDS} \
			::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

MAKE_ENV=		TEST_POD=Yes

CONFIGURE_STYLE= 	perl
PKG_ARCH=		*

.include <bsd.port.mk>
