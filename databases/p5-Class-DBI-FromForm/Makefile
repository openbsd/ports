# $OpenBSD: Makefile,v 1.2 2006/12/14 18:14:19 dassow Exp $

COMMENT=	"update Class:DBI data from html forms"

MODULES=	cpan
DISTNAME=	Class-DBI-FromForm-0.04
CATEGORIES=	www databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# XXX note this can retrieve data from several sources
RUN_DEPENDS=	::databases/p5-Class-DBI

.include <bsd.port.mk>
