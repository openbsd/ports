COMMENT= 	database OO schema for Jifty

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Jifty-DBI-0.78
CATEGORIES=	databases www

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Test-Warn
RUN_DEPENDS=	databases/p5-DBI \
		databases/p5-DBIx-DBSchema>=0.34 \
		databases/p5-Data-Page>=2.0 \
		devel/p5-Cache-Memcached \
		devel/p5-Cache-Simple-TimedExpiry>=0.21 \
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
		devel/p5-Time-Duration \
		devel/p5-Time-Duration-Parse \
		devel/p5-Universal-require>=0.11 \
		devel/p5-YAML-Syck \
		textproc/p5-Lingua-EN-Inflect \
		www/p5-URI

# a lot of tests will be skipped without DB connections
TEST_DEPENDS=	databases/p5-DBD-SQLite

.include <bsd.port.mk>
