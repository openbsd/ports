# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:50 simon Exp $

COMMENT=        "visitor-style traversal of Perl data structures"

MODULES=	cpan
DISTNAME=	Data-Visitor-0.05
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor

REGRESS_DEPENDS=:p5-Test-MockObject->=1.04:devel/p5-Test-MockObject \
		::devel/p5-Test-use-ok

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
