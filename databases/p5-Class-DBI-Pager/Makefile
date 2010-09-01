# $OpenBSD: Makefile,v 1.6 2010/09/01 09:17:43 sthen Exp $

COMMENT=	pager utility for Class::DBI

MODULES=	cpan
DISTNAME=	Class-DBI-Pager-0.08
REVISION=	0
CATEGORIES=	databases

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-Class-DBI \
		::databases/p5-Data-Page \
		::devel/p5-Exporter-Lite
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
