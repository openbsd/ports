# $OpenBSD: Makefile,v 1.1.1.1 2010/06/30 17:06:08 jim Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
DISTNAME=		PPIx-Utilities-1.000001
CATEGORIES=		textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		ELLIOTJS

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Exception-Class

REGRESS_DEPENDS=	::devel/p5-Test-Deep

.include <bsd.port.mk>
