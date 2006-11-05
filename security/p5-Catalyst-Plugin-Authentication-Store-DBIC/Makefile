# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 17:04:47 espie Exp $

COMMENT= 	"CDBI Authentication for Catalyst"

DISTNAME=	Catalyst-Plugin-Authentication-Store-DBIC-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::databases/p5-DBI \
		::devel/p5-Set-Object \
		::security/p5-Catalyst-Plugin-Authentication \
		::security/p5-Catalyst-Plugin-Authorization-Roles
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage \
		::databases/p5-DBD-SQLite \
		::databases/p5-DBIx-Class \
		::databases/p5-Catalyst-Model-DBIC-Schema \
		::www/p5-Catalyst-Plugin-Session-PerUser

CONFIGURE_STYLE=perl modbuild
PKG_ARCH=	*
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
