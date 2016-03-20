# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:38 naddy Exp $

COMMENT=	check for spelling errors in POD files

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-Spelling-0.20
CATEGORIES=	devel textproc

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-Pod-Spell \
		textproc/aspell/core \
		devel/p5-IPC-Run3
TEST_DEPENDS =	devel/p5-Test-Tester

.include <bsd.port.mk>
