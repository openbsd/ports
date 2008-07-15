# $OpenBSD: Makefile,v 1.4 2008/07/15 18:15:49 dhill Exp $

COMMENT=	module to work with TLD names

MODULES=	cpan
DISTNAME=	Net-Domain-TLD-1.67
CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
