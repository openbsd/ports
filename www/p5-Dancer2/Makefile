# $OpenBSD: Makefile,v 1.2 2015/09/11 21:02:51 landry Exp $

COMMENT =		lightweight yet powerful web application framework

MODULES =		cpan
DISTNAME =		Dancer2-0.162000
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		devel/p5-File-ShareDir-Install>=0.06 \
			${RUN_DEPENDS}

RUN_DEPENDS = 		devel/p5-App-Cmd \
			devel/p5-Class-Load \
			devel/p5-Config-Any \
			www/p5-HTTP-Body \
			www/p5-HTTP-Date \
			www/p5-HTTP-Headers-Fast \
			devel/p5-Hash-Merge-Simple \
			converters/p5-JSON \
			devel/p5-Moo>=1.003000 \
			devel/p5-MooX-Types-MooseLike \
			www/p5-Plack>=1.0029 \
			www/p5-Plack-Middleware-FixMissingBodyInRedirect \
			www/p5-Plack-Middleware-RemoveRedundantBody \
			devel/p5-Return-MultiLevel \
			devel/p5-Safe-Isa \
			textproc/p5-Template \
			textproc/p5-Template-Tiny \
			devel/p5-YAML

TEST_DEPENDS =		sysutils/p5-Capture-Tiny \
			www/p5-HTTP-Body \
			www/p5-HTTP-Cookies \
			www/p5-HTTP-Message \
			www/p5-Plack>=1.0029 \
			devel/p5-Test-Fatal \
			devel/p5-Test-Memory-Cycle>=1.04 \
			devel/p5-Test-MockTime \
			devel/p5-YAML

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mno_shared}
RUN_DEPENDS +=		converters/p5-JSON-XS \
			devel/p5-Class-Load-XS \
			devel/p5-Scope-Upper
.endif

.include <bsd.port.mk>
