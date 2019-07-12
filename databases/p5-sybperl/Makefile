# $OpenBSD: Makefile,v 1.36 2019/07/12 20:43:58 sthen Exp $

COMMENT=	Sybase database access in Perl

DISTNAME=	sybperl-2.19
REVISION=	3

CATEGORIES=	databases perl5

HOMEPAGE=	http://www.peppler.org/freeware/sybperl.html

# perl
PERMIT_PACKAGE=	Yes

WANTLIB +=	c iconv intl m perl sybdb>=5 ct>=3

MODULES=	cpan
CPAN_AUTHOR=	MEWP

LIB_DEPENDS=	databases/freetds

CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
