# $OpenBSD: Makefile,v 1.13 2014/10/23 14:34:46 nigel Exp $

COMMENT=	inlining your tests next to the code being tested

MODULES=	cpan
DISTNAME=	Test-Inline-2.213
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

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
