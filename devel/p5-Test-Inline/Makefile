# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:10 sthen Exp $

COMMENT=	inlining your tests next to the code being tested

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Test-Inline-2.213
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Algorithm-Dependency \
		devel/p5-Config-Tiny \
		devel/p5-File-chmod \
		devel/p5-File-Find-Rule \
		devel/p5-File-Flat \
		devel/p5-File-Slurp \
		devel/p5-Test-Script \
		textproc/p5-Pod-Tests
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
