# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:51 sthen Exp $

COMMENT=	organize data in tables

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Text-Table-1.134
CATEGORIES=	textproc
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-Text-Aligner

TEST_DEPENDS=		devel/p5-Test-TrailingSpace

# let empty, it would require a port for Pod::Coverage::TrustPod
MAKE_ENV+=		TEST_POD= AUTHOR_TESTING=

.include <bsd.port.mk>
