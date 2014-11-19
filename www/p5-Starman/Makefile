# $OpenBSD: Makefile,v 1.3 2014/11/19 22:04:01 sthen Exp $

COMMENT =		high-performance preforking PSGI/Plack web server

MODULES =		cpan
DISTNAME =		Starman-0.2007
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MIYAGAWA

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Data-Dump \
			devel/p5-Net-Server>=0.91 \
			net/p5-Server-Starter \
			net/p5-Net-Server-SS-PreFork \
			www/p5-Plack>=0.9931 \
			www/p5-HTTP-Parser-XS \
			www/p5-libwww

# XXX strange failure to find Test::More
CONFIGURE_ARGS = --skipdeps

.include <bsd.port.mk>
