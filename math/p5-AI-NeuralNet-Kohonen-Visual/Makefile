# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:27 sthen Exp $

COMMENT=		visualisation of Kohonen's Self-Organizing Maps#'

DISTNAME=		AI-NeuralNet-Kohonen-Visual-0.3
REVISION=		2
CATEGORIES=		math x11

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		math/p5-AI-NeuralNet-Kohonen \
			x11/p5-Tk

TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
