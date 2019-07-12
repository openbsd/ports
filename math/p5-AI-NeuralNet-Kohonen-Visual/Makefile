# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:44 sthen Exp $

COMMENT=		visualisation of Kohonen's Self-Organizing Maps#'

DISTNAME=		AI-NeuralNet-Kohonen-Visual-0.3
REVISION=		1
CATEGORIES=		math x11

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		math/p5-AI-NeuralNet-Kohonen \
			x11/p5-Tk

TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
