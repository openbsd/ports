# $OpenBSD: Makefile,v 1.3 2016/03/20 19:57:05 naddy Exp $

COMMENT=		transform LaTeX source files to POD

DISTNAME=		LaTeX-Pod-0.21
CATEGORIES=		textproc

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-LaTeX-TOM \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
