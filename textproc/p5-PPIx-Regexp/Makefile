# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:43 espie Exp $

COMMENT=		parse regular expressions

MODULES=		cpan
DISTNAME=		PPIx-Regexp-0.020
CATEGORIES=		textproc
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=		WYANT

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-List-MoreUtils \
			devel/p5-Params-Util \
			devel/p5-Readonly \
			devel/p5-Task-Weaken \
			textproc/p5-PPI

.include <bsd.port.mk>
