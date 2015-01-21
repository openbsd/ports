# $OpenBSD: Makefile,v 1.10 2015/01/21 14:19:14 sthen Exp $

COMMENT=		visualisation of Kohonen's Self-Organizing Maps#'

DISTNAME=		AI-NeuralNet-Kohonen-Visual-0.3
REVISION=		1
CATEGORIES=		math x11

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		math/p5-AI-NeuralNet-Kohonen \
			x11/p5-Tk

TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
