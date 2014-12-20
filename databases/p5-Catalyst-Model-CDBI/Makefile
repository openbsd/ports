# $OpenBSD: Makefile,v 1.8 2014/12/20 08:53:19 benoit Exp $

COMMENT= 	catalyst model for Class::DBI

DISTNAME =	Catalyst-Model-CDBI-0.12
CATEGORIES=	databases www
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		databases/p5-Class-DBI-Loader

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
