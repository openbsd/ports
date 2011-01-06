# $OpenBSD: Makefile,v 1.2 2011/01/06 21:28:22 landry Exp $

COMMENT =		hot-deployable variant of Net::Server::PreFork

MODULES =		cpan
DISTNAME =		Net-Server-SS-PreFork-0.05
REVISION =		0
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Net-Server \
			net/p5-Test-TCP>=0.06 \
			net/p5-Server-Starter>=0.02
REGRESS_DEPENDS =	www/p5-HTTP-Server-Simple \
			www/p5-libwww

.include <bsd.port.mk>
