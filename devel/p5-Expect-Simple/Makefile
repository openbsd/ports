# $OpenBSD: Makefile,v 1.1.1.1 2007/09/21 02:38:59 msf Exp $

COMMENT=	wrapper around the Expect module

MODULES=	cpan
DISTNAME=	Expect-Simple-0.03
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Expect

.include <bsd.port.mk>
