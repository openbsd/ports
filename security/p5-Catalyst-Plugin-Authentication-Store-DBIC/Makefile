# $OpenBSD: Makefile,v 1.2 2006/11/28 11:09:51 espie Exp $

COMMENT= 	"CDBI Authentication for Catalyst"

DISTNAME=	Catalyst-Plugin-Authentication-Store-DBIC-0.07
CATEGORIES=	security

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::databases/p5-DBI \
		::devel/p5-Set-Object \
		::security/p5-Catalyst-Plugin-Authentication \
		::security/p5-Catalyst-Plugin-Authorization-Roles
REGRESS_DEPENDS=::databases/p5-DBD-SQLite \
		::databases/p5-DBIx-Class \
		::databases/p5-Catalyst-Model-DBIC-Schema \
		::www/p5-Catalyst-Plugin-Session-PerUser

CONFIGURE_STYLE=modbuild

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
