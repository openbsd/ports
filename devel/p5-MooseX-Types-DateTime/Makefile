# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:19 espie Exp $

COMMENT=		DateTime related constraints and coercions for Moose

MODULES=		cpan
DISTNAME=		MooseX-Types-DateTime-0.05
CATEGORIES=		devel

USE_GROFF=		Yes

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-DateTime \
			devel/p5-Moose \
			devel/p5-MooseX-Types \
			devel/p5-Test-use-ok
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
