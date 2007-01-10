# $OpenBSD: Makefile,v 1.6 2007/01/10 19:21:47 bernd Exp $

COMMENT=	"Test wrapper with helpers for testing Apache"

DISTNAME=	Apache-Test-1.28
PKGNAME=	p5-${DISTNAME}p0
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
