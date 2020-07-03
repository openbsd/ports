# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:36 sthen Exp $

COMMENT =		hot-deployable variant of Net::Server::PreFork

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Net-Server-SS-PreFork-0.05
REVISION =		2
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Net-Server \
			net/p5-Test-TCP>=0.06 \
			net/p5-Server-Starter>=0.02 \
			www/p5-HTTP-Server-Simple \
			www/p5-libwww

.include <bsd.port.mk>
