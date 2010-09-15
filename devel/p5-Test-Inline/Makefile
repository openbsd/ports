# $OpenBSD: Makefile,v 1.7 2010/09/15 13:52:11 sthen Exp $

COMMENT= 	inlining your tests next to the code being tested

MODULES=	cpan
DISTNAME=	Test-Inline-2.105
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Algorithm-Dependency \
		::devel/p5-Class-Autouse \
		::devel/p5-Config-Tiny \
		::devel/p5-File-Find-Rule \
		::devel/p5-File-Flat \
		::textproc/p5-Pod-Tests
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
