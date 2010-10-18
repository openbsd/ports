# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:00 espie Exp $

COMMENT=	wrapper around the Expect module

MODULES=	cpan
DISTNAME=	Expect-Simple-0.04
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Expect

.include <bsd.port.mk>
