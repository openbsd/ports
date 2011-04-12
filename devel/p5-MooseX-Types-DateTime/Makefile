# $OpenBSD: Makefile,v 1.1.1.1 2011/04/12 11:18:14 jasper Exp $

COMMENT=		DateTime related constraints and coercions for Moose

MODULES=		cpan
DISTNAME=		MooseX-Types-DateTime-0.05
CATEGORIES=		devel

USE_GROFF=		Yes

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-DateTime \
			devel/p5-Moose \
			devel/p5-MooseX-Types \
			devel/p5-Test-use-ok
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
