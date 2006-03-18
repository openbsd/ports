# $OpenBSD: Makefile,v 1.5 2006/03/18 07:40:47 sturm Exp $

COMMENT=	"Test wrapper with helpers for testing Apache"

DISTNAME=	Apache-Test-1.28
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=perl

# does not work
NO_REGRESS=	Yes

.include <bsd.port.mk>
