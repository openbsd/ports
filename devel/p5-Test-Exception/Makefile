# $OpenBSD: Makefile,v 1.11 2010/12/01 14:03:27 sthen Exp $

COMMENT= 	test functions for exception based code

MODULES=	cpan
DISTNAME=	Test-Exception-0.31
CATEGORIES=	devel
USE_GROFF=	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS= 		devel/p5-Sub-Uplevel
REGRESS_DEPENDS=	devel/p5-Pod-Coverage \
			devel/p5-IO-String

.include <bsd.port.mk>
