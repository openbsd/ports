# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:43 espie Exp $

COMMENT=		transform LaTeX source files to POD

DISTNAME=		LaTeX-Pod-0.21
CATEGORIES=		textproc

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		textproc/p5-LaTeX-TOM \
			devel/p5-List-MoreUtils \
			devel/p5-Params-Validate \
			devel/p5-boolean

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
