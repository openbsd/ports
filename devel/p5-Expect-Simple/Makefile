# $OpenBSD: Makefile,v 1.2 2008/10/03 10:30:53 jasper Exp $

COMMENT=	wrapper around the Expect module

MODULES=	cpan
DISTNAME=	Expect-Simple-0.04
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Expect

.include <bsd.port.mk>
