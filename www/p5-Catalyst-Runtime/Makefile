COMMENT=	elegant MVC Web Application Framework

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Runtime-5.90128
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-Task-Weaken

RUN_DEPENDS=	converters/p5-JSON-MaybeXS>=1.0 \
		devel/p5-Class-C3-Adopt-NEXT>=0.07 \
		devel/p5-Class-Load>=0.12 \
		devel/p5-Data-Dump \
		devel/p5-Data-OptList \
		devel/p5-Hash-MultiValue \
		devel/p5-MRO-Compat \
		devel/p5-Module-Pluggable>=4.7 \
		devel/p5-Moose>=2.1400 \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast>=0.00903 \
		devel/p5-MooseX-Getopt>=0.48 \
		devel/p5-MooseX-MethodAttributes>=0.24 \
		devel/p5-Path-Class>=0.09 \
		devel/p5-Safe-Isa \
		devel/p5-Stream-Buffered \
		devel/p5-Sub-Exporter \
		devel/p5-Task-Weaken \
		devel/p5-Tree-Simple>=1.15 \
		devel/p5-Tree-Simple-VisitorFactory \
		devel/p5-Try-Tiny>=0.17 \
		devel/p5-namespace-clean>=0.23 \
		textproc/p5-PerlIO-utf8_strict \
		textproc/p5-String-RewritePrefix>=0.004 \
		textproc/p5-Text-SimpleTable>=0.03 \
		www/p5-CGI-Struct \
		www/p5-CGI-Simple>=1.109 \
		www/p5-HTML-Parser \
		www/p5-HTTP-Body>=1.22 \
		www/p5-HTTP-Message>=5.814 \
		www/p5-Plack>=0.9991 \
		www/p5-Plack-Middleware-FixMissingBodyInRedirect>=0.09 \
		www/p5-Plack-Middleware-MethodOverride>=0.12 \
		www/p5-Plack-Middleware-RemoveRedundantBody>=0.03 \
		www/p5-Plack-Middleware-ReverseProxy>=0.04 \
		www/p5-Plack-Test-ExternalServer \
		www/p5-URI>=1.65 \
		www/p5-URI-ws>=0.03 \
		www/p5-libwww>=5.837

TEST_DEPENDS=	devel/p5-Term-Size-Any \
		devel/p5-Test-Fatal \
		devel/p5-Test-WWW-Mechanize-Catalyst \
		devel/p5-Type-Tiny \
		www/p5-Catalyst-Action-REST \
		www/p5-Catalyst-Plugin-ConfigLoader \
		www/p5-CatalystX-LeakChecker>=0.05


MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
