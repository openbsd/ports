# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:57 sthen Exp $

COMMENT =		high-performance preforking PSGI/Plack web server

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Starman-0.4014
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		MIYAGAWA

BUILD_DEPENDS =		www/p5-libwww \
			devel/p5-Test-Requires

RUN_DEPENDS =		devel/p5-Data-Dump \
			www/p5-HTTP-Date \
			www/p5-HTTP-Message \
			www/p5-HTTP-Parser-XS \
			devel/p5-Net-Server>=2.007 \
			www/p5-Plack>=0.9971 \
			net/p5-Server-Starter

TEST_DEPENDS =		www/p5-HTTP-Message \
			devel/p5-Net-Server>=2.007 \
			www/p5-LWP-Protocol-https>=6 \
			www/p5-Plack>=0.9971 \
			devel/p5-Test-Requires \
			net/p5-Test-TCP \
			www/p5-libwww

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
