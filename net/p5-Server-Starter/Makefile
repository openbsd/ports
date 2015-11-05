# $OpenBSD: Makefile,v 1.4 2015/11/05 12:40:56 benoit Exp $

COMMENT =		superdaemon for hot-deploying server programs

MODULES =		cpan
DISTNAME =		Server-Starter-0.32
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

TEST_DEPENDS =		net/p5-Test-TCP>=2.08 \
			devel/p5-Test-Requires \
			devel/p5-Test-SharedFork

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE +=	modbuild

.include <bsd.port.mk>
