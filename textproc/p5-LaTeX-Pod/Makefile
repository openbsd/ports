# $OpenBSD: Makefile,v 1.5 2020/07/03 21:45:46 sthen Exp $

COMMENT=		transform LaTeX source files to POD

DISTNAME=		LaTeX-Pod-0.21
CATEGORIES=		textproc
REVISION=		0

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		textproc/p5-LaTeX-TOM \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
