# $OpenBSD: Makefile,v 1.4 2010/11/15 19:46:03 espie Exp $

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
RUN_DEPENDS=	devel/p5-Expect

.include <bsd.port.mk>
