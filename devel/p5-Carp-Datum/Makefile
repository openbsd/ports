# $OpenBSD: Makefile,v 1.1.1.1 2003/04/13 16:54:28 sturm Exp $

COMMENT=	"debugging and tracing ultimate module"

DISTNAME=	Carp-Datum-0.1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Carp/}

MAINTAINER=	Andrew Dalgleish <openbsd@andrewdalgleish.dyndns.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Getargs-Long->=0.1.3:devel/p5-Getargs-Long
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
