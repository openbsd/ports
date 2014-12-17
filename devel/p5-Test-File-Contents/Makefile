# $OpenBSD: Makefile,v 1.10 2014/12/17 12:47:43 benoit Exp $

COMMENT=		perl test framework for file contents

MODULES=		cpan
DISTNAME =		Test-File-Contents-0.21
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =		textproc/p5-Text-Diff

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>	
