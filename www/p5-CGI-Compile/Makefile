# $OpenBSD: Makefile,v 1.6 2016/03/20 19:57:14 naddy Exp $

COMMENT=	compile .cgi scripts to a code reference

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	CGI-Compile-0.21
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild tiny

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/p5-File-pushd

TEST_DEPENDS =	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
