# $OpenBSD: Makefile,v 1.7 2010/11/15 19:46:03 espie Exp $

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
RUN_DEPENDS=	p5-Log-Agent->=0.105:devel/p5-Log-Agent

.include <bsd.port.mk>
