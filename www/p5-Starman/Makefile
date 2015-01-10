# $OpenBSD: Makefile,v 1.4 2015/01/10 12:49:15 sthen Exp $

COMMENT =		high-performance preforking PSGI/Plack web server

MODULES =		cpan
DISTNAME =		Starman-0.4011
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MIYAGAWA

BUILD_DEPENDS =		www/p5-libwww \
			devel/p5-Module-Build-Tiny>=0.039 \
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
			www/p5-Plack>=0.9971 \
			devel/p5-Test-Requires \
			net/p5-Test-TCP \
			www/p5-libwww

CONFIGURE_STYLE =	modbuild

# Module::Build::Tiny like "--" prefix for CLI options
do-install:
	@cd ${WRKSRC} && perl \
	    ${MODPERL_BUILD} ${FAKE_TARGET} \
		--destdir "${PREFIX}" \
		--install_path lib="libdata/perl5/site_perl" \
		--install_path=libdoc="man/man3p" \
		--install_path=bindoc="man/man1" \
		--install_path script="bin"

.include <bsd.port.mk>
