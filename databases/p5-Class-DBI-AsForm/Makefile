# $OpenBSD: Makefile,v 1.5 2007/07/26 08:57:02 steven Exp $

COMMENT=	"produce HTML form elements for database columns"

MODULES=	cpan
DISTNAME=	Class-DBI-AsForm-2.42
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI-Plugin-Type \
		::www/p5-HTML-Tree
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
