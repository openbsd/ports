# $OpenBSD: Makefile,v 1.1.1.1 2010/03/28 19:28:06 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		helper functions for op tree manipulation

DISTNAME=		B-Utils-0.11
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Task-Weaken \
			::devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
