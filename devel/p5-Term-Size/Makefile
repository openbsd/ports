# $OpenBSD: Makefile,v 1.7 2019/05/19 21:13:26 cwen Exp $

COMMENT=		module to fetch the size of the terminal

MODULES=		cpan
DISTNAME=		Term-Size-0.209
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
