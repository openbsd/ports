# $OpenBSD: Makefile,v 1.14 2019/07/12 20:45:01 sthen Exp $

COMMENT = 	logging Role with easy interface for Moose

DISTNAME =	MooseX-Log-Log4perl-0.47
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =		devel/p5-Log-Log4perl>=1.13 \
			devel/p5-Moo>=1.000007
BUILD_DEPENDS =		devel/p5-IO-stringy \
			${RUN_DEPENDS}

MAKE_ENV +=		TEST_POD=Yes

.include <bsd.port.mk>
