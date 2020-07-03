# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:37 sthen Exp $

COMMENT= 	database OO schema for Jifty

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Jifty-DBI-0.68
CATEGORIES=	databases www
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-Test-Warn
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-DBIx-DBSchema \
		databases/p5-Data-Page \
		devel/p5-Cache-Memcached \
		devel/p5-Cache-Simple-TimedExpiry \
		devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-ReturnValue \
		devel/p5-Class-Trigger \
		devel/p5-Clone \
		devel/p5-DateTime \
		devel/p5-DateTime-Format-ISO8601 \
		devel/p5-DateTime-Format-Strptime \
		devel/p5-Exporter-Lite \
		devel/p5-Hash-Merge \
		devel/p5-Object-Declare>=0.22 \
		devel/p5-Scalar-Defer>=0.10 \
		devel/p5-Universal-require \
		textproc/p5-Lingua-EN-Inflect \
		www/p5-URI

# a lot of tests will be skipped without DB connections
TEST_DEPENDS=databases/p5-DBD-SQLite

.include <bsd.port.mk>
