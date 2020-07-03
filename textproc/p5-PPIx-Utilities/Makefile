# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:48 sthen Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		PPIx-Utilities-1.001000
CATEGORIES=		textproc
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=		ELLIOTJS

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Exception-Class \
			devel/p5-Readonly \
			textproc/p5-PPI

TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
