# $OpenBSD: Makefile,v 1.2 2004/01/04 08:34:26 sturm Exp $

COMMENT=	"debugging and tracing ultimate module"

DISTNAME=	Carp-Datum-0.1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Carp/}

MAINTAINER=	Andrew Dalgleish <openbsd@ajd.net.au>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Getargs-Long->=0.1.3:devel/p5-Getargs-Long
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
