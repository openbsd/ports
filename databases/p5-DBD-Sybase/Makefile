# $OpenBSD: Makefile,v 1.34 2020/07/03 21:44:35 sthen Exp $

COMMENT=	Sybase database driver for the DBI module

DISTNAME=	DBD-Sybase-1.16
REVISION=	2
CATEGORIES=	databases

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
