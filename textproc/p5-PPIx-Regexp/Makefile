# $OpenBSD: Makefile,v 1.14 2020/03/27 17:31:26 sthen Exp $

COMMENT=		parse regular expressions

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		PPIx-Regexp-0.070
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=		WYANT

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Task-Weaken \
			textproc/p5-PPI

.include <bsd.port.mk>
