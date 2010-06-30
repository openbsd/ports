# $OpenBSD: Makefile,v 1.1.1.1 2010/06/30 17:02:42 jim Exp $

COMMENT=		parse regular expressions

MODULES=		cpan
DISTNAME=		PPIx-Regexp-0.007
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		WYANT

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-List-MoreUtils \
			::devel/p5-Params-Util \
			::devel/p5-Readonly \
			::devel/p5-Task-Weaken \
			::textproc/p5-PPI

.include <bsd.port.mk>
