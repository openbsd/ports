# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:07 naddy Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		PPIx-Utilities-1.001000
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		ELLIOTJS

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Exception-Class \
			devel/p5-Readonly \
			textproc/p5-PPI

TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
