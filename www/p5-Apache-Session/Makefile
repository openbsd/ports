# $OpenBSD: Makefile,v 1.1.1.1 2004/05/02 23:09:37 naddy Exp $

COMMENT=	"persistence framework for Apache session data"

DISTNAME=	Apache-Session-1.6
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Michael Coulter <mjc@bitz.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# some tests use optional dependencies
NO_REGRESS=	Yes

CONFIGURE_STYLE=perl

.include <bsd.port.mk>
