# $OpenBSD: Makefile,v 1.1.1.1 2011/01/07 13:45:39 jasper Exp $

COMMENT =		high-performance preforking PSGI/Plack web server

MODULES =		cpan
DISTNAME =		Starman-0.2007
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =		MIYAGAWA

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Data-Dump \
			devel/p5-Net-Server>=0.91 \
			net/p5-Server-Starter \
			net/p5-Net-Server-SS-PreFork \
			www/p5-Plack>=0.9931 \
			www/p5-HTTP-Parser-XS \
			www/p5-libwww

.include <bsd.port.mk>
