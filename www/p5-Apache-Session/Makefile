# $OpenBSD: Makefile,v 1.2 2004/07/04 23:42:59 mjc Exp $

COMMENT=	"persistence framework for Apache session data"

DISTNAME=	Apache-Session-1.6
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# some tests use optional dependencies
NO_REGRESS=	Yes

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
