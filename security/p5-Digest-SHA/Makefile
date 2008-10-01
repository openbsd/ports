# $OpenBSD: Makefile,v 1.9 2008/10/01 21:54:26 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl extension for SHA-1/224/256/384/512
COMES_WITH=	4.5

MODULES=	cpan
DISTNAME=	Digest-SHA-5.47
CATEGORIES=	security

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Pod ::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
