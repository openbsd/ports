# $OpenBSD: Makefile,v 1.1.1.1 2006/11/07 16:33:29 espie Exp $

COMMENT= 	"catalyst model for Class::DBI"

DISTNAME=	Catalyst-Model-CDBI-0.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::databases/p5-Class-DBI-Loader

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl
PKG_ARCH=	*

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
