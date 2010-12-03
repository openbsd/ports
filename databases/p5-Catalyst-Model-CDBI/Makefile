# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:23 ajacoutot Exp $

COMMENT= 	catalyst model for Class::DBI

DISTNAME=	Catalyst-Model-CDBI-0.11
REVISION=	0
CATEGORIES=	databases www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		databases/p5-Class-DBI-Loader

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
