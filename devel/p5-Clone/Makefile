# $OpenBSD: Makefile,v 1.17 2010/12/03 11:44:28 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	recursively copy Perl datatypes

MODULES=	cpan
DISTNAME=	Clone-0.31
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Taint-Runtime

.include <bsd.port.mk>
