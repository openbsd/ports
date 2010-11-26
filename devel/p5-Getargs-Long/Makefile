# $OpenBSD: Makefile,v 1.8 2010/11/26 07:19:01 espie Exp $

COMMENT=	parses long function arguments

MODULES=	cpan
DISTNAME=	Getargs-Long-1.1001
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Log-Agent>=0.105

.include <bsd.port.mk>
