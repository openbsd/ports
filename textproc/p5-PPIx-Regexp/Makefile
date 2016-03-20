# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:07 naddy Exp $

COMMENT=		parse regular expressions

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		PPIx-Regexp-0.048
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		WYANT

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Util \
			devel/p5-Readonly \
			devel/p5-Task-Weaken \
			textproc/p5-PPI

.include <bsd.port.mk>
