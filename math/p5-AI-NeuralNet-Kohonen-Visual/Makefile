# $OpenBSD: Makefile,v 1.7 2011/09/16 10:31:22 espie Exp $

COMMENT=		visualisation of Kohonen's Self-Organizing Maps

DISTNAME=		AI-NeuralNet-Kohonen-Visual-0.3
REVISION=		1
CATEGORIES=		math x11

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

USE_GROFF =		Yes

RUN_DEPENDS=		math/p5-AI-NeuralNet-Kohonen \
			x11/p5-Tk

REGRESS_IS_INTERACTIVE= x11

.include <bsd.port.mk>

