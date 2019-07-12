# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:49 sthen Exp $

COMMENT=	compile .cgi scripts to a code reference

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	CGI-Compile-0.22
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=modbuild tiny

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/p5-File-pushd

TEST_DEPENDS =	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
