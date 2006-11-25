# $OpenBSD: Makefile,v 1.3 2006/11/25 16:32:34 espie Exp $

COMMENT=	"debugging and tracing ultimate module"

MODULES=	cpan
DISTNAME=	Carp-Datum-0.1.3
PKGNAME=	p5-${DISTNAME}p0
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
