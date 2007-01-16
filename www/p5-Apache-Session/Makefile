# $OpenBSD: Makefile,v 1.3 2007/01/16 17:52:06 simon Exp $

COMMENT=	"persistence framework for Apache session data"

MODULES=	cpan
DISTNAME=	Apache-Session-1.6
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www databases

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# some tests use optional dependencies
NO_REGRESS=	Yes

.include <bsd.port.mk>
