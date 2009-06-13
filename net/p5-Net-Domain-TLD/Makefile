# $OpenBSD: Makefile,v 1.5 2009/06/13 20:51:03 sthen Exp $

COMMENT=	module to work with TLD names

MODULES=	cpan
DISTNAME=	Net-Domain-TLD-1.68
CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
