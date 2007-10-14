# $OpenBSD: Makefile,v 1.2 2007/10/14 09:29:37 simon Exp $

COMMENT=        module to create objects that are handles to classes

MODULES=	cpan
DISTNAME=	Class-Handle-1.06
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Inspector
REGRESS_DEPENDS=::devel/p5-Test-Pod

.include <bsd.port.mk>
