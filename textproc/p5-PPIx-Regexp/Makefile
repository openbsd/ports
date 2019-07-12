# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:04 sthen Exp $

COMMENT=		parse regular expressions

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		PPIx-Regexp-0.063
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=		WYANT

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Task-Weaken \
			textproc/p5-PPI

.include <bsd.port.mk>
