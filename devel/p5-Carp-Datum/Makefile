# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
DISTNAME=	Carp-Datum-0.1.3
REVISION=	1
CATEGORIES=	devel perl5
USE_GROFF =	Yes

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
