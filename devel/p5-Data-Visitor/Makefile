# $OpenBSD: Makefile,v 1.13 2009/06/19 12:10:05 simon Exp $

COMMENT=	visitor-style traversal of Perl data structures

MODULES=	cpan
DISTNAME=	Data-Visitor-0.25
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Data-Alias \
		:p5-Any-Moose->=0.09:devel/p5-Any-Moose \
		::devel/p5-Tie-ToObject \
		::devel/p5-namespace-clean

REGRESS_DEPENDS=:p5-Test-MockObject->=1.04:devel/p5-Test-MockObject \
		::devel/p5-Test-use-ok

.include <bsd.port.mk>
