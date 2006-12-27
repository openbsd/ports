# $OpenBSD: Makefile,v 1.7 2006/12/27 12:58:08 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"recursively copy Perl datatypes"

MODULES=	cpan
DISTNAME=	Clone-0.22
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Taint-Runtime

.include <bsd.port.mk>
