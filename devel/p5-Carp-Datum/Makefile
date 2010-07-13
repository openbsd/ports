# $OpenBSD: Makefile,v 1.5 2010/07/13 19:46:11 sthen Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
DISTNAME=	Carp-Datum-0.1.3
REVISION=	0
CATEGORIES=	devel perl5

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Getargs-Long->=0.1.3:devel/p5-Getargs-Long
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
