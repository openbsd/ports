# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:03 sthen Exp $

COMMENT=		transform LaTeX source files to POD

DISTNAME=		LaTeX-Pod-0.21
CATEGORIES=		textproc

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
