# $OpenBSD: Makefile,v 1.2 2006/11/17 16:02:48 espie Exp $

COMMENT= 	"database OO schema for Jifty"

MODULES=	cpan

DISTNAME=	Jifty-DBI-0.25
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	databases www

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-ReturnValue \
		::devel/p5-Clone \
		::databases/p5-DBI \
		::databases/p5-Data-Page \
		::devel/p5-DateTime \
		::devel/p5-Exporter-Lite \
		::textproc/p5-Lingua-EN-Inflect \
		::devel/p5-Universal-require \
		::databases/p5-DBIx-DBSchema \
		::devel/p5-Cache-Simple-TimedExpiry \
		::devel/p5-DateTime-Format-Strptime \
		::devel/p5-Cache-Memcached \
		::devel/p5-DateTime-Format-ISO8601

# a lot of tests will be skipped without DB connections

REGRESS_DEPENDS=::databases/p5-DBD-SQLite

.include <bsd.port.mk>
