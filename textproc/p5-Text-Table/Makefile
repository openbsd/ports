# $OpenBSD: Makefile,v 1.18 2020/06/12 07:23:41 benoit Exp $

COMMENT=	organize data in tables

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Text-Table-1.134
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-Text-Aligner

TEST_DEPENDS=		devel/p5-Test-TrailingSpace

# let empty, it would require a port for Pod::Coverage::TrustPod
MAKE_ENV+=		TEST_POD= AUTHOR_TESTING=

.include <bsd.port.mk>
