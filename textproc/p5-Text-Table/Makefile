# $OpenBSD: Makefile,v 1.17 2019/07/12 20:50:07 sthen Exp $

COMMENT=	organize data in tables

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Text-Table-1.133
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-Text-Aligner

TEST_DEPENDS=		devel/p5-Test-TrailingSpace

# let empty, it would require a port for Pod::Coverage::TrustPod
MAKE_ENV+=		TEST_POD= AUTHOR_TESTING=

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
