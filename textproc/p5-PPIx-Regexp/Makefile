# $OpenBSD: Makefile,v 1.8 2015/09/02 08:43:20 benoit Exp $

COMMENT=		parse regular expressions

MODULES=		cpan
DISTNAME =		PPIx-Regexp-0.041
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
