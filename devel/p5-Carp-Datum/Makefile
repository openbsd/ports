# $OpenBSD: Makefile,v 1.6 2010/10/18 17:47:56 espie Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
DISTNAME=	Carp-Datum-0.1.3
REVISION=	0
CATEGORIES=	devel perl5
USE_GROFF =	Yes

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Getargs-Long->=0.1.3:devel/p5-Getargs-Long
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
