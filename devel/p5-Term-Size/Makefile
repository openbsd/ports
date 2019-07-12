# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:08 sthen Exp $

COMMENT=		module to fetch the size of the terminal

MODULES=		cpan
DISTNAME=		Term-Size-0.209
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
