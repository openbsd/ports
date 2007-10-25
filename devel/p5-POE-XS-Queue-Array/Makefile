# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 22:01:48 sthen Exp $
COMMENT=	C implementation of priority queues

MODULES=	cpan
DISTNAME=	POE-XS-Queue-Array-0.003
CATEGORIES=	devel
SHARED_ONLY=    Yes

BUILD_DEPENDS=	::devel/p5-POE
RUN_DEPENDS=	${BUILD_DEPENDS}

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
