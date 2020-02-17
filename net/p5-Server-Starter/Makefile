# $OpenBSD: Makefile,v 1.8 2020/02/17 14:28:16 benoit Exp $

COMMENT =		superdaemon for hot-deploying server programs

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Server-Starter-0.35
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

TEST_DEPENDS =		net/p5-Test-TCP>=2.08 \
			devel/p5-Test-Requires \
			devel/p5-Test-SharedFork

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE +=	modbuild

.include <bsd.port.mk>
