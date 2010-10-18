# $OpenBSD: Makefile,v 1.5 2010/10/18 17:06:07 espie Exp $

COMMENT=	update Class::DBI objects through CGI::Untaint

MODULES=	cpan
DISTNAME=	Class-DBI-FromCGI-1.00
CATEGORIES=	databases www
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI \
		::www/p5-CGI-Untaint
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
