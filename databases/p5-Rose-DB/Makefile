# $OpenBSD: Makefile,v 1.4 2008/01/12 14:29:39 espie Exp $

COMMENT=	DBI wrapper and abstraction layer

MODULES=	cpan

DISTNAME=	Rose-DB-0.737
CATEGORIES=	databases

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::math/p5-Bit-Vector \
		::devel/p5-DateTime-Format-Pg \
		::devel/p5-DateTime-Format-MySQL \
		::databases/p5-SQL-ReservedWords \
		::devel/p5-Time-Clock \
		::databases/p5-DBI \
		::databases/p5-Rose-Object \
		::databases/p5-Rose-DateTime \
		::devel/p5-Clone \
		::devel/p5-YAML-Syck

.include <bsd.port.mk>
