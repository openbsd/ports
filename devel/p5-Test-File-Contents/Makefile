# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:37 naddy Exp $

COMMENT=		perl test framework for file contents

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Test-File-Contents-0.21
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =		textproc/p5-Text-Diff

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>	
