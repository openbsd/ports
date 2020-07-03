# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:13 sthen Exp $

COMMENT=		perl test framework for file contents

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Test-File-Contents-0.23
CATEGORIES=		devel
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =		textproc/p5-Text-Diff

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
