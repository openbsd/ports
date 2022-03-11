COMMENT =	provide a simple Login controller which can be reused

DISTNAME =	CatalystX-SimpleLogin-0.21

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-MooseX-RelatedClassRoles>=0.004 \
			devel/p5-Moose \
			devel/p5-MooseX-MethodAttributes>=0.18 \
			devel/p5-MooseX-Types \
			devel/p5-MooseX-Types-Common \
			devel/p5-Try-Tiny>=0.24 \
			devel/p5-namespace-autoclean \
			security/p5-Catalyst-Plugin-Authentication \
			textproc/p5-Catalyst-View-TT \
			www/p5-Catalyst-Action-REST>=0.74 \
			www/p5-Catalyst-Plugin-Session>=0.35 \
			www/p5-Catalyst-Runtime>=5.80013 \
			www/p5-CatalystX-Component-Traits>=0.13 \
			www/p5-CatalystX-InjectComponent \
			www/p5-HTML-FormHandler>=0.28001
TEST_DEPENDS =		databases/p5-SQL-Translator \
			devel/p5-Class-Load>=0.20 \
			devel/p5-Test-Exception \
			security/p5-Catalyst-Authentication-Store-DBIx-Class \
			www/p5-Catalyst-ActionRole-ACL \
			www/p5-Catalyst-Action-RenderView \
			www/p5-Catalyst-Plugin-Session-State-Cookie

CONFIGURE_ARGS= --skipdeps

PKG_ARCH =		*

.include <bsd.port.mk>
