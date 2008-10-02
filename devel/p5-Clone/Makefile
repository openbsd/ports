# $OpenBSD: Makefile,v 1.11 2008/10/02 20:35:08 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	recursively copy Perl datatypes

MODULES=	cpan
DISTNAME=	Clone-0.28
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Taint-Runtime

.include <bsd.port.mk>
