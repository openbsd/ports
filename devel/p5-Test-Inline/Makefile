# $OpenBSD: Makefile,v 1.12 2014/04/24 11:15:30 sthen Exp $

COMMENT=	inlining your tests next to the code being tested

MODULES=	cpan
DISTNAME=	Test-Inline-2.105
REVISION=	3
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Algorithm-Dependency \
		devel/p5-Class-Autouse \
		devel/p5-Config-Tiny \
		devel/p5-File-Find-Rule \
		devel/p5-File-Flat \
		devel/p5-File-Slurp \
		textproc/p5-Pod-Tests
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
