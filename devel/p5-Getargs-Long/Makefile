# $OpenBSD: Makefile,v 1.4 2006/11/25 16:32:35 espie Exp $

COMMENT=	"parses long function arguments"

MODULES=	cpan
DISTNAME=	Getargs-Long-1.1001
CATEGORIES=	devel

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Log-Agent->=0.105:devel/p5-Log-Agent

.include <bsd.port.mk>
