COMMENT =	lightweight yet powerful web application framework

DISTNAME =	Dancer2-0.400000

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-File-ShareDir-Install>=0.06

RUN_DEPENDS = 		converters/p5-Cpanel-JSON-XS \
			converters/p5-JSON \
			converters/p5-JSON-XS \
			converters/p5-JSON-MaybeXS \
			devel/p5-CLI-Osprey \
			devel/p5-Class-Load \
			devel/p5-Config-Any \
			devel/p5-File-Share \
			devel/p5-Hash-Merge-Simple \
			devel/p5-Import-Into \
			devel/p5-Moo>=2.000000 \
			devel/p5-MooX-Types-MooseLike \
			devel/p5-Ref-Util \
			devel/p5-Return-MultiLevel \
			devel/p5-Safe-Isa \
			devel/p5-Scope-Upper \
			devel/p5-Type-Tiny \
			devel/p5-YAML \
			devel/p5-YAML-XS \
			mail/p5-MIME-Types \
			security/p5-Digest-SHA1 \
			sysutils/p5-File-Which \
			textproc/p5-Template \
			textproc/p5-Template-Tiny \
			www/p5-HTTP-Body \
			www/p5-HTTP-Cookies \
			www/p5-HTTP-Date \
			www/p5-HTTP-Headers-Fast \
			www/p5-Plack-Middleware-FixMissingBodyInRedirect \
			www/p5-Plack-Middleware-RemoveRedundantBody \
			www/p5-Plack>=1.0040

TEST_DEPENDS =		devel/p5-AnyEvent \
			devel/p5-Test-CPAN-Meta \
			devel/p5-Test-EOL \
			devel/p5-Test-Fatal \
			devel/p5-Test-Memory-Cycle>=1.04 \
			devel/p5-Test-MockTime \
			devel/p5-Test-NoTabs \
			devel/p5-Test-Perl-Critic \
			sysutils/p5-Capture-Tiny

MAKE_ENV =		TEST_POD=yes AUTHOR_TESTING=Yes

PKG_ARCH =		*

.include <bsd.port.mk>
