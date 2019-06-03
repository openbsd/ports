# $OpenBSD: Makefile,v 1.32 2019/06/03 16:06:50 sthen Exp $

COMMENT=	Sybase database driver for the DBI module

DISTNAME=	DBD-Sybase-1.16
REVISION=	0
CATEGORIES=	databases

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c ct intl m perl

MODULES=	cpan

LIB_DEPENDS=	databases/freetds
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/p5-DBI

CONFIGURE_ENV+=	SYBASE=${LOCALBASE}
CONFIGURE_ARGS=	--chained=y --accept_test_defaults

# after building, edit ${WRKSRC}/PWD to point at an available server
TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
