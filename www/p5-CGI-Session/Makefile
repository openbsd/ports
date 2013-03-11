# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:44 espie Exp $

COMMENT=	persistent session data in CGI applications

MODULES=	cpan
DISTNAME=	CGI-Session-4.48
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS= databases/p5-DBI \
		databases/p5-DBD-SQLite \
		databases/p5-DBD-mysql \
		databases/p5-DBD-Pg \
		devel/p5-FreezeThaw \
		www/p5-CGI-Simple

.include <bsd.port.mk>
