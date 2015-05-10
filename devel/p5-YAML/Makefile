# $OpenBSD: Makefile,v 1.17 2015/05/10 16:49:28 afresh1 Exp $

COMMENT =	YAML Ain't Markup Language

MODULES =	cpan

DISTNAME =	YAML-1.15
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

TEST_DEPENDS =	devel/p5-Test-YAML>=1.05 \
		devel/p5-Test-Pod
MAKE_ENV +=	RELEASE_TESTING=1

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mno_shared}
RUN_DEPENDS +=	devel/p5-YAML-XS
.endif

.include <bsd.port.mk>

