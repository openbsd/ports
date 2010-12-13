# $OpenBSD: Makefile,v 1.6 2010/12/13 13:15:06 sthen Exp $

COMMENT=	persistent session data in CGI applications

MODULES=	cpan
DISTNAME=	CGI-Session-4.42
CATEGORIES=	www
USE_GROFF=	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS= databases/p5-DBI \
		databases/p5-DBD-SQLite \
		databases/p5-DBD-mysql \
		databases/p5-DBD-Pg \
		devel/p5-FreezeThaw \
		www/p5-CGI-Simple

.include <bsd.port.mk>
