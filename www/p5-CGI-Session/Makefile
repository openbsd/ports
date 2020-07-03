# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:56 sthen Exp $

COMMENT=	persistent session data in CGI applications

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-Session-4.48
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS= databases/p5-DBI \
		databases/p5-DBD-SQLite \
		databases/p5-DBD-mysql \
		databases/p5-DBD-Pg \
		devel/p5-FreezeThaw \
		www/p5-CGI-Simple

.include <bsd.port.mk>
