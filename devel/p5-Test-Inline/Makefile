# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:22 espie Exp $

COMMENT= 	inlining your tests next to the code being tested

MODULES=	cpan
DISTNAME=	Test-Inline-2.105
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Algorithm-Dependency \
		devel/p5-Class-Autouse \
		devel/p5-Config-Tiny \
		devel/p5-File-Find-Rule \
		devel/p5-File-Flat \
		textproc/p5-Pod-Tests
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
