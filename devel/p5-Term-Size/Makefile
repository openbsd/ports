# $OpenBSD: Makefile,v 1.9 2020/07/03 21:45:11 sthen Exp $

COMMENT=		module to fetch the size of the terminal

MODULES=		cpan
DISTNAME=		Term-Size-0.209
CATEGORIES=		devel
REVISION=		0

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

MAKE_ENV+=	TEST_POD=Yes AUTHOR_TESTING=Yes

.include <bsd.port.mk>
