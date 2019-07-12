# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:41 sthen Exp $

COMMENT =		superdaemon for hot-deploying server programs

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Server-Starter-0.34
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

TEST_DEPENDS =		net/p5-Test-TCP>=2.08 \
			devel/p5-Test-Requires \
			devel/p5-Test-SharedFork

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE +=	modbuild

.include <bsd.port.mk>
