# $OpenBSD: Makefile,v 1.5 2007/09/15 20:34:01 simon Exp $

COMMENT=	determine type information for columns

MODULES=	cpan
DISTNAME=	Class-DBI-Plugin-Type-0.02
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
