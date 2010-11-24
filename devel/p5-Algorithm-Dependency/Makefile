# $OpenBSD: Makefile,v 1.10 2010/11/24 15:28:45 jasper Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan

DISTNAME=	Algorithm-Dependency-1.110
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Test-ClassAPI \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
