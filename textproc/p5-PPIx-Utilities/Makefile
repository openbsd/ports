# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:23 espie Exp $

COMMENT=		extensions to PPI

MODULES=		cpan
DISTNAME=		PPIx-Utilities-1.000001
CATEGORIES=		textproc
USE_GROFF =	Yes

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
