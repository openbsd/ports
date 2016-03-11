# $OpenBSD: Makefile,v 1.5 2016/03/11 13:13:19 nigel Exp $

COMMENT=	compile .cgi scripts to a code reference

MODULES=	cpan
DISTNAME =	CGI-Compile-0.21
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=modbuild tiny

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/p5-File-pushd

TEST_DEPENDS =	devel/p5-Test-NoWarnings

.include <bsd.port.mk>
