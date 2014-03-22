# $OpenBSD: Makefile,v 1.3 2014/03/22 14:06:36 jasper Exp $

COMMENT=		DateTime related constraints and coercions for Moose

MODULES=		cpan
DISTNAME=		MooseX-Types-DateTime-0.10
CATEGORIES=		devel

USE_GROFF=		Yes

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime \
			devel/p5-Moose \
			devel/p5-MooseX-Types>=0.30 \
			devel/p5-Test-use-ok
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
