# $OpenBSD: Makefile,v 1.12 2016/04/28 14:24:06 rpe Exp $

COMMENT=		perl test framework for file contents

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Test-File-Contents-0.23
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS =		textproc/p5-Text-Diff

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
