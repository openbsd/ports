# $OpenBSD: Makefile,v 1.7 2013/03/11 02:52:05 espie Exp $

COMMENT= 	catalyst model for Class::DBI

DISTNAME=	Catalyst-Model-CDBI-0.11
REVISION=	0
CATEGORIES=	databases www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		databases/p5-Class-DBI-Loader

MAKE_ENV=	TEST_POD=Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
