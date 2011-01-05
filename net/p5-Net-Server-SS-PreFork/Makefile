# $OpenBSD: Makefile,v 1.1.1.1 2011/01/05 23:09:07 jasper Exp $

COMMENT =		hot-deployable variant of Net::Server::PreFork

MODULES =		cpan
DISTNAME =		Net-Server-SS-PreFork-0.05
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Net-Server \
			net/p5-Server-Starter>=0.02
REGRESS_DEPENDS =	net/p5-Test-TCP>=0.06 \
			www/p5-HTTP-Server-Simple \
			www/p5-libwww

.include <bsd.port.mk>
