# $OpenBSD: Makefile,v 1.5 2010/11/22 08:36:50 espie Exp $

COMMENT=		catalyst helper for CRUD scaffolding

MODULES=		cpan
DISTNAME=		Catalyst-Helper-Controller-Scaffold-0.04
CATEGORIES=		devel www
USE_GROFF =		Yes

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		databases/p5-Class-DBI-AsForm \
			www/p5-Catalyst-Plugin-FormValidator \
			databases/p5-Class-DBI-FromForm \
			textproc/p5-Template-Plugin-Class \
			textproc/p5-Catalyst-View-TT

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
