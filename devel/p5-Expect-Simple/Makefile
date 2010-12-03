# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=	wrapper around the Expect module

MODULES=	cpan
DISTNAME=	Expect-Simple-0.04
REVISION=	0
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
