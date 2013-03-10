# $OpenBSD: Makefile,v 1.19 2013/03/10 19:45:55 benoit Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
DISTNAME =	MLDBM-2.05
CATEGORIES=	devel

RUN_DEPENDS =	devel/p5-FreezeThaw
BUILD_DEPENDS=	${RUN_DEPENDS}

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
