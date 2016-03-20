# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:57 naddy Exp $

COMMENT =		superdaemon for hot-deploying server programs

MODULES =		cpan
PKG_ARCH =		*
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
