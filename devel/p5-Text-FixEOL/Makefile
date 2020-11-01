# $OpenBSD: Makefile,v 1.11 2020/11/01 10:23:15 benoit Exp $

COMMENT= 	canonical EOL/EOF

MODULES=	cpan 
PKG_ARCH=	*

DISTNAME =	Text-FixEOL-1.08
CATEGORIES=	devel textproc

CONFIGURE_STYLE=modbuild

# MIT
PERMIT_PACKAGE=	Yes

TEST_DEPENDS =	devel/p5-Test-NoWarnings

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
