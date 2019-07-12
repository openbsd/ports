# $OpenBSD: Makefile,v 1.21 2019/07/12 20:44:59 sthen Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	MLDBM-2.05
CATEGORIES=	devel

RUN_DEPENDS =	devel/p5-FreezeThaw
BUILD_DEPENDS=	${RUN_DEPENDS}

# perl
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
