# $OpenBSD: Makefile,v 1.20 2016/03/20 19:56:27 naddy Exp $

COMMENT=	store multi-level hash structure in single-level tied hash

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	MLDBM-2.05
CATEGORIES=	devel

RUN_DEPENDS =	devel/p5-FreezeThaw
BUILD_DEPENDS=	${RUN_DEPENDS}

# perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
