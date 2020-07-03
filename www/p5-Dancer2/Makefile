# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:59 sthen Exp $

COMMENT =		lightweight yet powerful web application framework

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Dancer2-0.300000
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/p5-File-ShareDir-Install>=0.06

RUN_DEPENDS = 		devel/p5-App-Cmd \
			devel/p5-Class-Load \
			devel/p5-Config-Any \
			security/p5-Digest-SHA1 \
			devel/p5-File-Share \
			www/p5-HTTP-Body \
			www/p5-HTTP-Cookies \
			www/p5-HTTP-Date \
			www/p5-HTTP-Headers-Fast \
			devel/p5-Hash-Merge-Simple \
			devel/p5-Import-Into \
			converters/p5-JSON \
			converters/p5-JSON-XS \
			mail/p5-MIME-Types \
			devel/p5-Moo>=2.000000 \
			devel/p5-MooX-Types-MooseLike \
			www/p5-Plack>=1.0040 \
			www/p5-Plack-Middleware-FixMissingBodyInRedirect \
			www/p5-Plack-Middleware-RemoveRedundantBody \
			devel/p5-Ref-Util \
			devel/p5-Return-MultiLevel \
			devel/p5-Safe-Isa \
			devel/p5-Scope-Upper \
			textproc/p5-Template \
			textproc/p5-Template-Tiny \
			devel/p5-Type-Tiny \
			devel/p5-YAML

TEST_DEPENDS =		devel/p5-AnyEvent \
			devel/p5-Test-EOL \
			devel/p5-Test-Fatal \
			devel/p5-Test-Memory-Cycle>=1.04 \
			devel/p5-Test-MockTime \
			devel/p5-Test-NoTabs \
			devel/p5-Test-Perl-Critic

MAKE_ENV +=		TEST_POD=yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
