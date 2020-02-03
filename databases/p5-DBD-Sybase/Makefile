# $OpenBSD: Makefile,v 1.33 2020/02/03 20:40:38 sthen Exp $

COMMENT=	Sybase database driver for the DBI module

DISTNAME=	DBD-Sybase-1.16
REVISION=	1
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
