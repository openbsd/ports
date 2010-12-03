# $OpenBSD: Makefile,v 1.11 2010/12/03 11:44:25 ajacoutot Exp $

COMMENT=	base class for implementing various dependency trees

MODULES=	cpan

DISTNAME=	Algorithm-Dependency-1.110
REVISION=	0
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
